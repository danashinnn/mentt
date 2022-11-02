package common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.or.common.LogInterceptor;


public class InterceptorConfig implements WebMvcConfigurer{


	private LogInterceptor logInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(logInterceptor)
		.addPathPatterns("/dmMain2.do")
		.excludePathPatterns("/");
	}
	
	

}
