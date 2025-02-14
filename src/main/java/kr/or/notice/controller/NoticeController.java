package kr.or.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.notice.model.service.NoticeService;
import kr.or.notice.model.vo.Notice;
import kr.or.notice.model.vo.NoticePageData;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService service;
	
	//공지사항 
	@RequestMapping(value="/noticeList.do")
	public String boardList(int reqPage, Model model) {
		/*
		  NoticePageData bpd = service.selectNoticeList(reqPage);
		model.addAttribute("list",bpd.getList());
		model.addAttribute("pageNavi",bpd.getPageNavi());
		model.addAttribute("reqPage",bpd.getReqPage());
		model.addAttribute("numPerPage",bpd.getNumPerPage());
		return "notice/noticeList";	
		
		@RequestMapping(value="/boardList.do")
		public String boardList(int reqPage,Model model,String boardType) {
			HashMap<String, Object> pageMap = service.selectBoardList(reqPage,boardType);
			System.out.println(pageMap);
			model.addAttribute("list",(ArrayList<Board>)pageMap.get("list"));
			model.addAttribute("pageNavi",(String)pageMap.get("pageNavi"));
			model.addAttribute("reqPage",(int)pageMap.get("reqPage"));
			model.addAttribute("numPerPage",(int)pageMap.get("numPerPage"));
			//reqPage,numPerPage는 글번호와 상관없이 가장 최신글이 1번으로 출력되게 하기 위해서 보내줌
			return "board/boardList";
		}
		 */
		NoticePageData npd = service.selectNoticeList(reqPage);
		model.addAttribute("list", npd.getList());
		model.addAttribute("pageNavi",npd.getPageNavi());
		model.addAttribute("reqPage", npd.getReqPage());
		model.addAttribute("numPerPage", npd.getNumPerPage());
		return "notice/noticeList";	
	}
	
	//공지사항 상세보기
	@RequestMapping(value="/noticeView.do")
	public String noticeView(int noticeNo, Model model) {
		Notice n = service.selectOneNotice(noticeNo);
		model.addAttribute("n",n);
		return "notice/noticeView";
	}
	
	//공지사항 작성하기 폼으로 이동
	@RequestMapping(value="/noticeWriteFrm.do")
	public String noticeWriteFrm() {
		return "notice/noticeWriteFrm";
	}
	
	//공지사항 작성
	@RequestMapping(value="/noticeWrite.do")
	public String noticeWrite(Notice n, Model model) {
		System.out.println("공지사항 n:"+n);
		int result = service.insertNotice(n);
		System.out.println("결과result"+result);
		if(result>0) {
			return "redirect:/noticeList.do?reqPage=1";
		}else {
			model.addAttribute("msg", "글쓰기에 실패하셨습니다.");
			model.addAttribute("url","/noticeList.do?reqPage=1");
			return "alert";
		}
	}
}
