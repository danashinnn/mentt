package common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FileVO {
	private int fileNo;
	private String filename;
	private String filepath;
	private String fileExt; 	// 파일 확장자
	private String fileDivi; 	// 파일 구분 (Q : qna게시판, M : 멘토자격증)
	private int refNo;			// 원본 번호 (qna게시판 글번호 혹은 멘토 회원일련번호)
	private String delYn;		// 삭제 여부
}
