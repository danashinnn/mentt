package kr.or.mentee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.or.mentee.model.service.MenteeService;

@Controller
public class MenteeController {
	@Autowired
	private MenteeService menteeService;

	public MenteeController() {
		super();
	}

}