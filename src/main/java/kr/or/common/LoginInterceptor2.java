package kr.or.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor2 extends HandlerInterceptorAdapter{

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		final HttpSession session = request.getSession();
		String path = request.getRequestURI();
		if(path.contains("/") || path.contains("/login.do")) { //접근 경로가 main.do인 경우에인 interceptor 체크 예외
			return true;
		}else if (session.getAttribute("login_id") == null) {  //세션 로그인이 없으면 리다이렉트 처리
			response.sendRedirect("/");
			return false;
		}
		
		return true;
	}
	

}
