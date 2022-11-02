package kr.or.mentee.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mentee.model.dao.MenteeDao;

@Service
public class MenteeService {
	@Autowired
	private MenteeDao menteeDao;

	public MenteeService() {
		super();
	}
}