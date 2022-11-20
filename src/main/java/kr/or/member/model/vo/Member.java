package kr.or.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Member {
	private int mNo;
	private String mId;
	private String mPw;
	private String mName;
	private String phone;
	private String enrollDate;
	private String agreePromotion;
}
