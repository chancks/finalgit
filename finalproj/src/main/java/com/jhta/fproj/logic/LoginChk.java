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
		
		boolean chk = true;
		
		System.out.println("id:"+(String)session.getAttribute("id"));
		System.out.println("등급:"+grade);
		System.out.println("ServletPath:"+servletpath+"길이:"+servletpath.length());
		
		if(request.getServletPath().length()>1) {
			
			if(obj == null && url.contains(servletpath)) {
				response.sendRedirect("/mvc");
				return false;
			}
			
			if(grade.equals("강사")&& 
					((servletpath.contains("jun_List") && !servletpath.contains("p_"))
					||(servletpath.contains("Bs") && !servletpath.contains("timetable")))) {
				chk=grade.equals("강사")&& 
						((servletpath.contains("jun_List") && !servletpath.contains("p_"))
								||(servletpath.contains("Bs") && !servletpath.contains("timetable")));
				System.out.println("강사인터셉터:"+chk);
				
				response.sendRedirect("/mvc");
				return false;
			}
			
			if(grade.equals("학생")&& 
					(servletpath.contains("notice")
					||servletpath.contains("jun_List")
					||servletpath.contains("memberlist"))) {
				
				chk=grade.equals("학생")&& 
						(servletpath.contains("notice")
								||servletpath.contains("jun_List")
								||servletpath.contains("memberlist"));
				System.out.println("학생인터셉터:"+chk);
				
				response.sendRedirect("/mvc");
				return false;
			}
			
			if((grade.equals("관리자")||grade.equals("행정"))&& 
					(servletpath.contains("p_")
					||(servletpath.contains("Bs")&&
							!(servletpath.contains("totpay")||servletpath.contains("memberlist"))))) {
				
				chk=(grade.equals("관리자")||grade.equals("행정"))&& 
						(servletpath.contains("p_")
								||(servletpath.contains("Bs")&&
										!(servletpath.contains("totpay")||servletpath.contains("memberlist"))));
				System.out.println("관리자및행정인터셉터:"+chk);
				
				response.sendRedirect("/mvc");
				return false;
			}
			
		}
		
		return true;
	}
	
}