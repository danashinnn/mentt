package kr.or.mentee.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.mentee.model.vo.Mentee;

@Repository
public class MenteeDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public MenteeDao() {
		super();
	}

	public Mentee selectOneMentee(Mentee mentee) {
		return sqlSession.selectOne("mentee.selectOneMentee", mentee);
	}
}