package kr.or.qna.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.common.FileVO;
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

	public Qna selectQnaView(int qnaNo) {
		return sqlSession.selectOne("qna.selectQnaView", qnaNo);
	}

	public ArrayList<FileVO> selectFileList(int qnaNo) {
		List list = sqlSession.selectList("qna.selectFileList", qnaNo);
		return (ArrayList<FileVO>) list;
	}

	public int insertQna(Qna q) {
		return sqlSession.insert("qna.insertQna", q);
	}

	public int selectQnaNo() {
		return sqlSession.selectOne("qna.selectQnaNo");
	}

	public int insertFile(FileVO file) {
		return sqlSession.insert("qna.insertFile", file);
	}

	public FileVO selectOneFile(int fileNo) {
		return sqlSession.selectOne("qna.selectOneFile", fileNo);
	}

	public int updateQnaReadCount(int qnaNo) {
		return sqlSession.update("qna.updateQnaReadCount", qnaNo);
	}
}
