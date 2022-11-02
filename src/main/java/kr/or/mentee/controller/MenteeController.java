package kr.or.mentee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.mentee.model.service.MenteeService;

@Controller
public class MenteeController {
	@Autowired
	private MenteeService menteeService;

	public MenteeController() {
		super();
	}

	@RequestMapping(value = "/loginFrm.do")
	public String loginFrm() {
		return "mentee/loginFrm";
	}

}