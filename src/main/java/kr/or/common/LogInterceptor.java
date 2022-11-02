package kr.or.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.sun.java.util.jar.pack.Package.Class.Member;

public class LogInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean isLogin = true;
		
		if(!request.getRequestURI().equals("/")) {
			Member m = (Member)request.getSession().getAttribute("m");
			if(m == null){
				response.sendRedirect("/");
				isLogin = false;
			}
		}
		
		return isLogin;
	}

	

}
