package kr.or.mento.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MentoLiseceFile {
	private int fileNo; // 파일번호
	private String filename; // 파일이름
	private String filepath; // 파일경로
	private String fileExt; // 파일 확장자
	private char fileDivi; // 파일 구분(멘토인지 큐엔에이인지)
	private int reqNo; // 원본번호인경우
	private char delYn; // 삭제여부
}
