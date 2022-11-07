package kr.or.mento.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.mento.model.service.MentoService;

@Controller
public class MentoController {
	@Autowired
	private MentoService service;
	
	@RequestMapping(value="/insertMentoFrm.do")
	public String insertMentoFrm() {
		return "mento/mentoRegisterFrm";
	}
}
