package kr.or.notice.model.vo;

import java.util.ArrayList;

import kr.or.common.FileVO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Notice {
	private  int noticeNo; //고유번호
	private int noticeNum; //공지사항시퀀스랑 이벤트 시퀀스랑 구분
	private	String noticeTitle; //제목
	private String noticeContent; //내용
	private String noticeDate; //게시물 작성일
	private String noticeWriter; //게시물 작성
	private String noticeIp; //작성자 ip
	private String filename; //데이터에 실제로 올라갈 파일 이름
	private String filepath; //중복 처리하기 전 원본 파일 이름
	private int noticeReadCount; // 조회수 default=0
	private int noticeKind; // 0:공지사항게시물/ 1:이벤트게시물
	private char delYN; //삭제 여부 dafault = n
	private String chgNoticeWriter; //게시물 수정자(member_id참조)
	private String chgNoticeIp; //게시물 수정자 ip
	private String chgNoticeTime; //게시물 수정일 (yyyy-mm-dd hh24:mi:ss)
	private ArrayList<FileVO> fileList;
}
