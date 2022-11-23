package kr.or.qna.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.common.FileVO;
import kr.or.qna.model.dao.QnaDao;
import kr.or.qna.model.vo.Qna;

@Service
public class QnaService {

	@Autowired
	private QnaDao dao;

	public HashMap<String, Object> selectQnaList(int reqPage) {
		// 한 페이지에 보여줄 게시물 수
		int numPerPage = 10;
		// 1페이지면 1~10번 글
		// 2페이지면 11~20번 글
		int end = reqPage * numPerPage;
		int start = end - numPerPage + 1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("end", end);
		map.put("start", start);
		// reqPage에 해당하는 게시물들 받아옴
		ArrayList<Qna> list = dao.selectQnaList(map);
		
		// 전체 게시물 수 계산
		int totalCount = dao.selectQnaCount();
		
		// 전체 페이지 수 계산
		int totalPage = 0;
		if(totalCount%numPerPage == 0) {
			totalPage = totalCount/numPerPage;
		} else {
			totalPage = totalCount/numPerPage + 1;
		}
		
		// pageNavi의 사이즈
		int pageNaviSize = 5;
		
		// reqPage가 1~5면 1이 페이지 시작번호
		// reqPage가 6~10이면 6이 페이지 시작번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		
		String pageNavi = "<ul class='qna-pagination circle-style'>";
		if(pageNo != 1) { // 페이지 시작번호가 1이 아니면 이전 버튼 넣기
			pageNavi += "<li class='qna-page-prev'>";
			pageNavi += "<a class='qna-page-item' href='/qnaList.do?reqPage="+(pageNo-1)+"'>이전</a>";
			pageNavi += "</li>";
		}
		
		for(int i=0; i<pageNaviSize; i++) {
			if(pageNo == reqPage) {
				pageNavi += "<li>";
				pageNavi += "<a class='qna-page-item active-page' href='/qnaList.do?reqPage="+pageNo+"'>";
				pageNavi += pageNo;
				pageNavi += "</a></li>";
			}else {
				pageNavi += "<li>";
				pageNavi += "<a class='qna-page-item' href='/qnaList.do?reqPage="+pageNo+"'>";
				pageNavi += pageNo;
				pageNavi += "</a></li>";
			}
			
			pageNo++;
			if(pageNo > totalPage) {
				break;
			}
		}
		
		if(pageNo <= totalPage) {
			pageNavi += "<li class='qna-page-next'>";
			pageNavi += "<a class='qna-page-item' href='/qnaList.do?reqPage="+pageNo+"'>다음</a>";
			pageNavi += "</li>";
		}
		
		pageNavi += "</div>";
		map.put("pageNavi", pageNavi);
		map.put("list", list);
		return map;
	}

	public Qna selectQnaView(int qnaNo) {
		int result = dao.updateQnaReadCount(qnaNo);
		if(result > 0) {
			Qna q = dao.selectQnaView(qnaNo);
			ArrayList<FileVO> fileList = dao.selectFileList(qnaNo);
			q.setFileList(fileList);			
			return q;
		} else {
			return null;
		}
	}

	public int insertQna(Qna q, ArrayList<FileVO> fileList) {
		int result = dao.insertQna(q);
		int qnaNo = 0;
		if(result > 0) {
			qnaNo = dao.selectQnaNo();
			if(!fileList.isEmpty()) {
				for(FileVO file : fileList) {
					file.setReqNo(qnaNo);
					result += dao.insertFile(file);
				}
			}
		}
		return qnaNo;
	}

	public FileVO selectOneFile(int fileNo) {
		return dao.selectOneFile(fileNo);
	}
}
