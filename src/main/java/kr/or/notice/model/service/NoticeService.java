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
				int numPerPage = 5;
				//reqPage에 게시물 번호 읽어오기
				int end = reqPage*numPerPage;
				int start = end-numPerPage +1;
				HashMap<String,Object> map = new HashMap<String,Object>();
				map.put("start",start);
				map.put("end",end);
				ArrayList<Notice>list = dao.selectNoticeList(map);
				//pageNavi 시작
				//전체페이지 수 계산필요
				int totalCount = dao.selectNoticeCount();
				int totalPage = 0;
				if(totalCount%numPerPage==0) {
					totalPage = totalCount/numPerPage ;
				}else {
					totalPage = totalCount/numPerPage+1 ;
				}
				
				int pageNaviSize = 5;
//				int pageNo =((reqPage-1)/pageNaviSize)*pageNaviSize+1;
				int pageNo =1;
				if(reqPage>3) {
					pageNo = reqPage -2;
				}

				String pageNavi="<ul class='pagination circle-style'>";
				if(pageNo !=1) {
					 pageNavi +="<li>";
					 pageNavi +="<a class='page-item' href='/NoticeList.do?reqPage="+(pageNo-1)+"'>";
					 pageNavi +="<span class='material-icons'>chevron_left</span>";
					 pageNavi +="</a></li>";
				 }
				for(int i =0;i<pageNaviSize;i++) {
					 if(pageNo == reqPage) {
						 pageNavi +="<li>";
						 pageNavi +="<a class='page-item active-page' href='/NoticeList.do?reqPage="+pageNo+"'>";
						 pageNavi += pageNo;
						 //pageNavi +="<span class='material-icons'>chevron_left</span>";
						 pageNavi +="</a></li>";
					 }else {
						 pageNavi +="<li>";
						 pageNavi +="<a class='page-item' href='/NoticeList.do?reqPage="+pageNo+"'>";
						 pageNavi += pageNo;
						 //pageNavi +="<span class='material-icons'>chevron_left</span>";
						 pageNavi +="</a></li>";
					 }
					 pageNo++;
					 if(pageNo>totalPage) {
						break; 
					 }
				 }
				 //다음버튼
				 if(pageNo<=totalPage) {
					 pageNavi +="<li>";
					 pageNavi +="<a class='page-item' href='/NoticeList.do?reqPage="+pageNo+"'>";
					 pageNavi +="<span class='material-icons'>chevron_right</span>";
					 pageNavi +="</a></li>";
				 }
				 pageNavi += "</ul>";
				 NoticePageData bpd = new NoticePageData(list,pageNavi,reqPage,numPerPage);
				 return bpd;

			}
	}


