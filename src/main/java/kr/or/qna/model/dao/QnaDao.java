package kr.or.qna.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.qna.model.vo.Qna;

@Repository
public class QnaDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Qna> selectQnaList(HashMap<String, Object> map) {
		List list = sqlSession.selectList("qna.selectQnaList", map);
		return (ArrayList<Qna>) list;
	}
	
	public int selectQnaCount() {
		return sqlSession.selectOne("qna.selectQnaCount");
	}
}
