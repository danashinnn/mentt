package kr.or.mento.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MentoDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
}
