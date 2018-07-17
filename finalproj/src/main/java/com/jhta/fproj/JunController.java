package com.jhta.fproj;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.fproj.model.Jun_DAO;
import com.jhta.fproj.model.Jun_VO;
import com.jhta.fproj.model.MngDAO;

@Controller


public class JunController {

	@Resource
	Jun_DAO dao;
	
	@Resource
	MngDAO mngDAO;

	@RequestMapping("jun_List/{main}") 
	String view(@PathVariable("main") String main,Model model) {
		System.out.println("jun_List/{main} 탔음@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		System.out.println("컨트롤러 alert 가는 if문 타기전");
		System.out.println(main+"   메인은 어디인가!@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");

		
		if (main.equals("course_insertReg")||main.equals("course_ModifyReg")||main.equals("course_Delete")) {
			System.out.println("컨트롤러 alert 가는 if문 탐");
			return "jun_List/alert";
		}
		switch (main) {
		
		
		case "course_List":
			System.out.println("리퀘스트맵핑 course_List 들어옴");

			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "course_List");
			model.addAttribute("list", "course_List4.jsp");
			
			break;
		
		case"course_List1":
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "course_List");
			model.addAttribute("list", "course_List1.jsp");
			break;
			
		case"course_List2":
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "course_List");
			model.addAttribute("list", "course_List2.jsp");
			
			break;
			
		case"course_List3":
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "course_List");
			model.addAttribute("list", "course_List3.jsp");
			break;
			
		case"p_Course_List":
			
			System.out.println("리퀘스트맵핑 p_Course_List 들어옴");
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List4.jsp");
			
			break;
			
		case"p_Course_List1":
			System.out.println("리퀘스트맵핑 p_Course_List1 들어옴");
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List1.jsp");
			break;
			
		case"p_Course_List2":
			System.out.println("리퀘스트맵핑 p_Course_List2 들어옴");
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List2.jsp");
			break;
			
		case"p_Course_List3":
			System.out.println("리퀘스트맵핑 p_Course_List3 들어옴");
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List3.jsp");
				
			break;
			
		}
	
		return "home";

	}
	
	@ModelAttribute("data")
	Object data(@PathVariable("main") String main,Jun_VO vo, Model model,HttpSession session) {

		model.addAttribute("service", "jun_List");
		System.out.println(" 컨트롤러에서 어트리뷰트 data값을 받음 :" + vo);

		Object res = null;

		switch (main) {

		case "course_register":
			res = dao.professor_list(vo);
			System.out.println("컨트롤러에서  case: course_register 들어옴" + vo);
			break;
		
		/*		관리자가 보는 목록보@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
		case "course_List":
			res = dao.course_list(vo);
			System.out.println("컨트롤러에서  case: course_List 들어옴" + vo);
	
			break;

		case "course_List1":
			model.addAttribute("list", "List1");
			res = dao.course_list1(vo);
			System.out.println("컨트롤러에서  case: course_List1 들어옴" + vo);
			break;
			
		case "course_List2":
			System.out.println("컨트롤러에서  case: course_List2 들어옴" + vo);
			res = dao.course_list2(vo);

			break;
			
		case "course_List3":
			res = dao.course_list3(vo);
			System.out.println("컨트롤러에서  case: course_List3 들어옴" + vo);

			break;
			
	/*	case "course_List4":
			System.out.println("컨트롤러에서  case: course_List4 들어옴" + vo);
			res = dao.course_list4(vo);

			break;*/
			
		case "course_insertReg":
			System.out.println("컨트롤러에서  case: insertReg 들어옴" + vo);
			System.out.println("@@@@@@@@@");
			System.out.println("@@@@@@@@@@@");
			System.out.println("@@@@@@@@@@@@@");
			
			
			res = dao.course_insert(vo);

			model.addAttribute("msg", "작성완료");
			model.addAttribute("url", "course_Detail?ccode="+vo.getCcode());

			break;
			
			
		case "course_Detail":	

			res = dao.course_detail(vo);
			System.out.println("컨트롤러에서  case: course_Detail 들어옴" +vo);
			System.out.println(vo.getCstart());
			System.out.println(vo.getCfinish());
			
			break;
			
			
		case "course_Modify":	
		
			res = dao.course_modify(vo);
			
			model.addAttribute("teacher", dao.course_modify1(vo));
			
			System.out.println("컨트롤러에서  case: course_Modify 들어옴" + vo);
			break;
		
		case "course_ModifyReg":

			res = dao.course_modifyReg(vo);
			System.out.println("컨트롤러에서  case: course_ModifyReg 들어옴" +vo);
			model.addAttribute("msg", "수정완료");
			model.addAttribute("url", "course_Detail?ccode=" + vo.getCcode());

			break;
		
		case "course_Delete":
			System.out.println("컨트롤러에서  case: course_Delete 들어옴" + vo);
			res = dao.course_delete(vo);
	
			model.addAttribute("msg", "삭제 완료");
			model.addAttribute("url", "course_List");

			break;
			
			
			
		case "astudent_List":
			System.out.println("컨트롤러에서  case: astudent_List 들어옴" + vo);
			res = dao.astudent_list(vo);
	
			break;
			
			
		case "astudent_Course_List":
			System.out.println("컨트롤러에서  case: astudent_Course_List 들어옴" + vo);
			res = dao.astudent_course_list(vo);
	
			break;
			
			
			
		case "professor_List":
			System.out.println("컨트롤러에서  case: professor_List 들어옴" + vo);
			res = dao.professor_list(vo);
	
			break;
			
		case "professor_Course_List":
			System.out.println("컨트롤러에서  case: professor_Course_List 들어옴" + vo);
			res = dao.professor_course_list(vo);
	
			break;

			
			/*		강사가 보는 목록@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
			
		case "p_Course_List":
			vo.setCid((String)session.getAttribute("id"));
			System.out.println("컨트롤러에서  case: p_Course_List 들어옴" + vo);
			res = dao.p_course_list(vo);
	
			break;
			
		case "p_Course_List1":
			vo.setCid((String)session.getAttribute("id"));
			System.out.println("컨트롤러에서  case: p_Course_List1 들어옴" + vo);
			res = dao.p_course_list1(vo);
	
			break;
			
			
		case "p_Course_List2":
			vo.setCid((String)session.getAttribute("id"));
			System.out.println("컨트롤러에서  case: p_Course_List2 들어옴" + vo);
			res = dao.p_course_list2(vo);
	
			break;
			
		case "p_Course_List3":
			vo.setCid((String)session.getAttribute("id"));
			System.out.println("컨트롤러에서  case: p_Course_List3 들어옴" + vo);
			res = dao.p_course_list3(vo);
	
			break;
			
			
		case "p_Astudent_List":
			System.out.println("컨트롤러에서  case: p_Course_List 들어옴" + vo);
			res = dao.p_astudent_list(vo);
	
			break;
		

			
		}
		

		return res;

	}


	
}