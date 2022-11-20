package kr.or.notice.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.notice.model.dao.NoticeDao;
import kr.or.notice.model.vo.Notice;
import kr.or.notice.model.vo.NoticePageData;

@Service
public class NoticeService {
	@Autowired
	private NoticeDao dao;

	public NoticePageData selectNoticeList(int reqPage) {
		//한페이지당 보여줄 게시물 수
		System.out.println("service:"+reqPage);
				int numPerPage = 5;
				//reqPage에 게시물 번호 읽어오기
				//reqPage=1 -> 1-5 | reqPage=2 -> 6-10
				int end = reqPage*numPerPage;
				int start = end-numPerPage +1;
				//계산한 start,end 이용해서 게시물 목록 조회
				HashMap<String,Object> map = new HashMap<String,Object>();
				map.put("start",start);
				map.put("end",end);
				ArrayList<Notice>list = dao.selectNoticeList(map);
				System.out.println("controller:"+list);
				//pageNavi 시작
				//전체페이지 수 계산필요 -> 전체 게시물 수 조회
				//전체게시물 수
				int totalCount = dao.selectNoticeCount();
				//전체 페이지수
				int totalPage = 0;
				if(totalCount%numPerPage==0) {
					totalPage = totalCount/numPerPage ;
				}else {
					totalPage = totalCount/numPerPage+1 ;
				}
				//페이지 네비 길이
				int pageNaviSize = 5;
//				int pageNo =((reqPage-1)/pageNaviSize)*pageNaviSize+1;
				int pageNo =1;
				if(reqPage>3) {
					pageNo = reqPage -2;
				}
				
				//pageNavi 생성 시작
				String pageNavi = "";
				//이전버튼
				if(pageNo !=1) {
					pageNavi += "<a href='/noticeList.do?reqPage="+(pageNo-1)+"'>[이전]</a>";
				}
				//페이지 숫자 생성
				for(int i=0; i<pageNaviSize; i++) {
					if(pageNo == reqPage) {
						pageNavi += "<span>"+pageNo+"</span>";
					}else {
						pageNavi += "<a href='/noticeList.do?reqPage="+pageNo+"'>"+pageNo+"</a>";
					}
					pageNo++;
					if(pageNo>totalPage) {
						break;
					}
				}
				//다음버툰P
				if(pageNo<=totalPage) {
					pageNavi +="<a href='/boardList.do?reqPage="+pageNo+"'>[다음]</a>";
				}
				NoticePageData npd = new NoticePageData(list, pageNavi, reqPage, numPerPage);
				return npd;
			}
	}


