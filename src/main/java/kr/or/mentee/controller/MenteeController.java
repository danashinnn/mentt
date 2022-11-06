package kr.or.mentee.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mentee.model.service.MenteeService;
import kr.or.mentee.model.vo.Mentee;

@Controller
public class MenteeController {
	@Autowired
	private MenteeService menteeService;

	public MenteeController() {
		super();
	}

	@RequestMapping(value = "/loginFrm.do")
	public String loginFrm() {
		return "mentee/loginFrm";
	}

	@RequestMapping(value = "/login.do")
	public String login(Mentee mentee, HttpSession session) {
		Mentee m = menteeService.selectOneMentee(mentee);

		if (m != null) {
			session.setAttribute("m", m);
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	// 카카오 로그인 컨트롤러
	@RequestMapping(value = "login/getKakaoAuthUrl.do")
	public @ResponseBody String getKakaoAuthUrl(HttpServletRequest request) throws Exception {
		System.out.println("--------- 카카오연동 성공 ---------");

		String reqUrl = "https://kauth.kakao.com/oauth/authorize" + "?client_id=204c04dcd60c3bf74216981c2cb7a95d"
				+ "&redirect_uri=http://121.140.3.181/mentee/kakaologin" + "&response_type=code";
		return reqUrl;
	}

//	// 카카오 연동정보 조회 + DB에 회원 정보넣기
//	@RequestMapping(value = "/selectMyAccessTocken.do")
//	public String oauthKakao(@RequestParam(value = "code", required = false) String code, HttpServletRequest req)
//			throws Exception {
//
//		System.out.println("--------- 카카오 정보조회 들어옴 ---------");
//
//		// 발급받은 인가코드(reqUrl)를 통해 토큰 발급받기
//		System.out.println("#########" + code);
//		String access_Token = getAccessToken(code); // 인가코드를 통해 토큰발급
//		System.out.println("###access_Token#### : " + access_Token); // 확인용 토큰 출력
//
//		// 토큰을 이용해 회원 정보 가져오기
//		HashMap<String, Object> userInfo = getUserInfo(access_Token);
//		System.out.println("------- access_Token ------- : " + access_Token);
//		System.out.println("------- userInfo ------- : " + userInfo.get("email")); // 회원 이메일
//		System.out.println("------- nickname ------- : " + userInfo.get("nickname")); // 회원 이름
//
//		// 가져온 회원 정보 DB에 넣어 회원가입 시키기
//		UserVO userVO = new UserVO();
//		String kakao_email = (String) userInfo.get("email"); // 회원 아이디
//		String kakao_nickname = (String) userInfo.get("nickname"); // 회원 이름
//
//		// 만약 DB에 해당 회원의 ID가 없다면 회원가입 시키기
//		if (!userService.checkId(kakao_email)) {
//			log.info("유저 회원가입");
//			userVO.setUserId(kakao_email);
//			userVO.setUserName(kakao_nickname);
//			userService.joinKakao(userVO);
//		}
//		// 만약 이미 회원가입 된 회원이라면? 로그인하기
//		HttpSession session = req.getSession(); // session 생성
//		session.setAttribute("sessionU", kakao_email); // session 저장하기
//
//		return "main/mainPage"; // 본인 원하는 경로 설정
//	}

}