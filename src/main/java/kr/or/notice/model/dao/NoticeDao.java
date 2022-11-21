package kr.or.notice.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.common.FileVO;
import kr.or.notice.model.vo.Notice;

@Repository
public class NoticeDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Notice> selectNoticeList(HashMap<String, Object> map) {
		List list = sqlSession.selectList("notice.selectNoticeList", map);
		System.out.println("dao1:"+map);
		System.out.println("dao.:"+list);
		return (ArrayList<Notice>)list;
	}

	public int selectNoticeCount() {
		int totalCount = sqlSession.selectOne("notice.totalCount");
		return totalCount;
	}

	public Notice selectOneNotice(int noticeNo) {
		// TODO Auto-generated method stub
		Notice n = sqlSession.selectOne("notice.selectOneNotice",noticeNo);
		System.out.println("여기가 문제일껄? "+n);
		return n;
	}

	public ArrayList<FileVO> selectFileList(int noticeNo) {
		// TODO Auto-generated method stub
		List list = sqlSession.selectList("notice.selectFileList",noticeNo);
		return (ArrayList<FileVO>)list;
	}
}
