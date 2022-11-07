package kr.or.mentee.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mentee.model.dao.MenteeDao;
import kr.or.mentee.model.vo.Mentee;

@Service
public class MenteeService {
	@Autowired
	private MenteeDao menteeDao;

	public MenteeService() {
		super();
	}

	public Mentee selectOneMentee(Mentee mentee) {
		return menteeDao.selectOneMentee(mentee);
	}

	public boolean checkId(String kakao_email) {
		return false;
	}
}