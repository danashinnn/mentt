package kr.or.qna.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.qna.model.service.QnaService;
import kr.or.qna.model.vo.Qna;

@Controller
public class QnaController {

	@Autowired
	private QnaService service;
	
	@RequestMapping(value="/faqList.do")
	public String faqList() {
		return "faq/faqList";
	}
	
	@RequestMapping(value="/qnaList.do")
	public String selectQnaList(int reqPage, Model model) {
		HashMap<String, Object> map = service.selectQnaList(reqPage);
		model.addAttribute("reqPage", reqPage);
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageNavi", map.get("pageNavi"));
		return "qna/qnaList";
	}
}
