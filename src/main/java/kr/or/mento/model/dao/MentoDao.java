package kr.or.mento.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.mento.model.vo.Mento;
import kr.or.mento.model.vo.MentoLiseceFile;

@Repository
public class MentoDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertmento(Mento mento) {
		int result = sqlSession.insert("mento.insertMento", mento);
		return result;
	}

	public int selectMentoNo() {
		int result = sqlSession.selectOne("mento.selectMentoNo");
		return result;
	}

	public int insertMentoLicense(MentoLiseceFile files) {
		int result = sqlSession.insert("mento.insertMentoFile", files);
		return result;
	}
}
