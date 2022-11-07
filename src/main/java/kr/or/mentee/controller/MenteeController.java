package kr.or.mentee.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

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
	
	@RequestMapping(value = "/kakaoLodingFrm.do")
	public String kakaolLodingFrm() {
		return "mentee/kakaoLoding";
	}

	// 카카오 로그인 컨트롤러
	@RequestMapping(value = "login/getKakaoAuthUrl.do")
	public @ResponseBody String getKakaoAuthUrl(HttpServletRequest request) throws Exception {
		System.out.println("--------- 카카오연동 성공 ---------");

		String reqUrl = "https://kauth.kakao.com/oauth/authorize" + "?client_id=204c04dcd60c3bf74216981c2cb7a95d"
				+ "&redirect_uri=http://121.140.3.181/kakaoLodingFrm.do" + "&response_type=code";
		return reqUrl;
	}

	// 카카오 연동정보 조회 + DB에 회원 정보넣기
	@RequestMapping(value = "/selectMyAccessTocken.do")
	public String oauthKakao(@RequestParam(value = "code", required = false) String code, HttpServletRequest req)
			throws Exception {

		System.out.println("--------- 카카오 정보조회 들어옴 ---------");

		// 발급받은 인가코드(reqUrl)를 통해 토큰 발급받기
		System.out.println("#########" + code);
		String access_Token = getAccessToken(code); // 인가코드를 통해 토큰발급
		System.out.println("###access_Token#### : " + access_Token); // 확인용 토큰 출력

		// 토큰을 이용해 회원 정보 가져오기
		HashMap<String, Object> userInfo = getUserInfo(access_Token);
		System.out.println("------- access_Token ------- : " + access_Token);
		System.out.println("------- userInfo ------- : " + userInfo.get("email")); // 회원 이메일
		System.out.println("------- nickname ------- : " + userInfo.get("nickname")); // 회원 이름

		// 가져온 회원 정보 DB에 넣어 회원가입 시키기
		Mentee mentee = new Mentee();
		String kakao_email = (String) userInfo.get("email"); // 회원 아이디
		String kakao_nickname = (String) userInfo.get("nickname"); // 회원 이름

//		// 만약 DB에 해당 회원의 ID가 없다면 회원가입 시키기
//		if (!userService.checkId(kakao_email)) {
//			log.info("유저 회원가입");
//			mentee.setMId(kakao_email);
//			mentee.setMName(kakao_nickname);
//			userService.joinKakao(mentee);
//		}
		// 만약 이미 회원가입 된 회원이라면? 로그인하기
		HttpSession session = req.getSession(); // session 생성
		session.setAttribute("sessionU", kakao_email); // session 저장하기

		return "redirect:/"; // 본인 원하는 경로 설정
	}
	
	 public String getAccessToken (String authorize_code) {
	        String access_Token = "";
	        String refresh_Token = "";
	        String reqURL = "https://kauth.kakao.com/oauth/token";

	        try {
	            URL url = new URL(reqURL);

	            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

	            //  URL연결은 입출력에 사용 될 수 있고, POST 혹은 PUT 요청을 하려면 setDoOutput을 true로 설정해야함.
	            conn.setRequestMethod("POST");
	            conn.setDoOutput(true);

	            //	POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
	            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
	            StringBuilder sb = new StringBuilder();
	            sb.append("grant_type=authorization_code");
	            sb.append("&client_id=204c04dcd60c3bf74216981c2cb7a95d");  //본인이 발급받은 REST API key
	            sb.append("&redirect_uri=http://121.140.3.181/kakaoLodingFrm.do");     // 본인이 설정해 놓은 경로
	            sb.append("&code=" + authorize_code);
	            bw.write(sb.toString());
	            bw.flush();

	            //    결과 코드가 200이라면 성공
	            int responseCode = conn.getResponseCode();
	            System.out.println("responseCode : " + responseCode);

	            //    요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
	            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	            String line = "";
	            String result = "";

	            while ((line = br.readLine()) != null) {
	                result += line;
	            }
	            System.out.println("response body : " + result);

	            //    Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
	            JsonParser parser = new JsonParser();
	            JsonElement element = parser.parse(result);

	            access_Token = element.getAsJsonObject().get("access_token").getAsString();
	            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

	            System.out.println("access_token : " + access_Token);
	            System.out.println("refresh_token : " + refresh_Token);

	            br.close();
	            bw.close();
	        } catch (IOException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }

	        return access_Token;
	    }


	//유저정보조회
	    public HashMap<String, Object> getUserInfo (String access_Token) {

	        //    요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
	        HashMap<String, Object> userInfo = new HashMap<String, Object>();
	        String reqURL = "https://kapi.kakao.com/v2/user/me";
	        try {
	            URL url = new URL(reqURL);
	            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	            conn.setRequestMethod("GET");

	            //    요청에 필요한 Header에 포함될 내용
	            conn.setRequestProperty("Authorization", "Bearer " + access_Token);

	            int responseCode = conn.getResponseCode();
	            System.out.println("responseCode : " + responseCode);

	            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

	            String line = "";
	            String result = "";

	            while ((line = br.readLine()) != null) {
	                result += line;
	            }
	            System.out.println("response body : " + result);

	            JsonParser parser = new JsonParser();
	            JsonElement element = parser.parse(result);

	            JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
	            JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

	            String nickname = properties.getAsJsonObject().get("nickname").getAsString();
	            String email = kakao_account.getAsJsonObject().get("email").getAsString();

	            userInfo.put("accessToken", access_Token);
	            userInfo.put("nickname", nickname);
	            userInfo.put("email", email);

	        } catch (IOException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }

	        return userInfo;
	    }

}