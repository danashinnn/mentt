package kr.or.qna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.qna.model.service.QnaService;

@Controller
public class QnaController {

	@Autowired
	private QnaService service;
	
	@RequestMapping(value="/faqList.do")
	public String faqList() {
		return "faq/faqList";
	}
	
	@RequestMapping(value="/qnaList.do")
	public String qnaList() {
		return "qna/qnaList";
	}
}
