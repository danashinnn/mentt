package kr.or.common;

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
	private String fileExt;
	private String fileDivi; // Q면 QNA 게시판의 첨부파일, M이면 멘토의 자격증 첨부파일
	private int reqNo; // QNA 게시판의 첨부파일이라면 QNA_TBL의 QNA_NO, 멘토의 자격증 첨부파일이면 멘토 회원일련번호
	private String delYn;
}
