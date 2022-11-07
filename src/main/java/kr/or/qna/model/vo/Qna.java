package kr.or.qna.model.vo;

import java.util.ArrayList;

import kr.or.common.FileVO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Qna {
	private int qnaNo;
	private int courseNo;
	private String qnaTitle;
	private String qnaContent;
	private int qnaReadCount;
	private String qnaRegDate;
	private String qnaWriter;
	private String qnaChDate;
	private String delYn;
	private ArrayList<FileVO> fileList;
}
