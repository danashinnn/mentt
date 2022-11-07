package kr.or.mento.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.or.mento.model.service.MentoService;

@Controller
public class MentoController {
	@Autowired
	private MentoService service;
}
