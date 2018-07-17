package com.jhta.fproj.logic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginChk extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("id");
		String grade = (String)session.getAttribute("grade");
		
		String url = request.getRequestURI();
		String servletpath = request.getServletPath();
		
		System.out.println("url:"+url);
		System.out.println("ServletPath:"+servletpath+"길이:"+servletpath.length());
		
		if(request.getServletPath().length()>1) {
			
			if(obj == null && url.contains(servletpath)) {
				response.sendRedirect("/mvc");
				return false;
			}
			
			if(grade.equals("강사")&& 
					servletpath.contains("jun_List") && !servletpath.contains("p_")) {
				
				response.sendRedirect("/mvc");
				return false;
			}
		}
		
		return true;
	}
	
}