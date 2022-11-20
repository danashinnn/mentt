package kr.or.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.member.model.dao.MemberDao;
import kr.or.member.model.vo.Member;

@Service
public class MemberService {
	@Autowired
	private MemberDao memberDao;

	public MemberService() {
		super();
	}

	public Member selectOneMentee(Member member) {
		return memberDao.selectOneMentee(member);
	}

	public boolean checkId(String kakao_email) {
		return false;
	}
}