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
		
		String url = request.getRequestURI();
		
		System.out.println("url:"+url);
		System.out.println("ServletPath:"+request.getServletPath()+"길이:"+request.getServletPath().length());
		
		if(request.getServletPath().length()>1) {
			
			if(obj == null && url.contains(request.getServletPath())) {
				response.sendRedirect("/mvc");
				return false;
			}
		}
		
		return true;
	}
	
}