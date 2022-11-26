package kr.or.mento.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mento.model.dao.MentoDao;
import kr.or.mento.model.vo.Mento;
import kr.or.mento.model.vo.MentoLiseceFile;

@Service
public class MentoService {
	@Autowired
	private MentoDao dao;

	public int insertMento(Mento mento) {
		int result = dao.insertmento(mento);
		
		if(result > 0) {
			int selectNo = dao.selectMentoNo();
			for(MentoLiseceFile files : mento.getMentoList()) {
				files.setReqNo(selectNo);
				result += dao.insertMentoLicense(files);
			}
		}
		
		return result;
	}

	public HashMap<String, Object> selectOneMento(int mNo) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		Mento mento = dao.selectOnemento(mNo);
		
		ArrayList<MentoLiseceFile> list = dao.selectAllLicence(mNo);
		
		mento.setMentoList(list);
		
		map.put("mento", mento);
		
		return map;
	}

	public HashMap<String, Object> selectAllMento(int reqPage) {
		
		int numPerPage = 20;
		
		int end = reqPage * numPerPage;
		
		int start = (end - numPerPage) + 1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("end", end);
		map.put("start", start);
		
		ArrayList<Mento> list = dao.selectAllMento(map);
		
		int totalCnt = dao.selectMentoCnt();
		
		int totalPage = 0;
		if(totalCnt % numPerPage != 0) {
			totalPage = totalCnt / numPerPage + 1;
		}else {
			totalPage = totalCnt / numPerPage;
		}
		
		int pageNaviSize = 5;
		int pageNo = 1;
		
		if(reqPage > 3) {
			pageNo = reqPage - 2;
		}
		
		String pageNavi = "";
		
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
		
		HashMap<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("list", list);
		pageMap.put("pageNavi", pageNavi);
		
		if(list == null) {
			return null;
		}else {
			return pageMap;
		}

	}
}






















