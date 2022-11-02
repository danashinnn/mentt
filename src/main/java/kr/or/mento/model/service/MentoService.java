package kr.or.mento.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mento.model.dao.MentoDao;

@Service
public class MentoService {
	@Autowired
	private MentoDao dao;
}
