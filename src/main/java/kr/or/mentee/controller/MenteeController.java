package kr.or.mentee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.mentee.model.service.MenteeService;
import kr.or.mentee.model.vo.Mentee;

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

	@RequestMapping(value = "/login.do")
	public String login(Mentee mentee, HttpSession session) {
		Mentee m = menteeService.selectOneMentee(mentee);

		if (m != null) {
			session.setAttribute("m", m);
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}