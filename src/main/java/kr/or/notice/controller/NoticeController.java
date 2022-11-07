package kr.or.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.FileRename;
import kr.or.notice.model.service.NoticeService;
import kr.or.notice.model.vo.NoticePageData;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService service;
	
	@RequestMapping(value="/noticeList.do")
	public String boardList(int reqPage, Model model) {
		/*
		  NoticePageData bpd = service.selectNoticeList(reqPage);
		model.addAttribute("list",bpd.getList());
		model.addAttribute("pageNavi",bpd.getPageNavi());
		model.addAttribute("reqPage",bpd.getReqPage());
		model.addAttribute("numPerPage",bpd.getNumPerPage());
		return "notice/noticeList";	
		 */
		NoticePageData npd = service.selectNoticeList(reqPage);
		model.addAttribute("list", npd.getList());
		model.addAttribute("pageNavi",npd.getPageNavi());
		model.addAttribute("reqPage", npd.getReqPage());
		model.addAttribute("numPerPage", npd.getNumPerPage());
		return "notice/noticeList";	
	}
}
