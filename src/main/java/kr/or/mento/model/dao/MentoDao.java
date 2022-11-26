package kr.or.mento.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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

	public Mento selectOnemento(int mNo) {
		Mento mento = sqlSession.selectOne("mento.selectOnemento", mNo);
		return mento;
	}

	public ArrayList<MentoLiseceFile> selectAllLicence(int mNo) {
		List<MentoLiseceFile> list = sqlSession.selectList("mento.selectAllLicence", mNo);
		return (ArrayList<MentoLiseceFile>)list;
	}

	public ArrayList<Mento> selectAllMento(HashMap<String, Object> map) {
		List list = sqlSession.selectList("mento.selectAllMento", map);
		
		if(list.isEmpty()) {
			return null;
		}else {
			return (ArrayList<Mento>)list;
		}
	}

	public int selectMentoCnt() {
		int result = sqlSession.selectOne("mento.selectMentoCnt");
		return result;
	}
}





















