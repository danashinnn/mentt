package kr.or.mento.model.vo;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Mento {
	private int mNo;
	private String mentoId;
	private String mentoName;
	private String mojorTheme;
	private String mentoMajor;
	private String mentoGrade;
	private int authStatus;
	private String delYn;
	private ArrayList<MentoLiseceFile> mentoList;
}
