package kr.or.mentee.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Mentee {
	private int mNo;
	private String mId;
	private String mPw;
	private String phone;
	private String enrollDate;
	private String agreePromotion;
}
