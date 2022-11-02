package kr.or.mentee.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MenteeDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public MenteeDao() {
		super();
	}
}