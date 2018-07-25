package com.jhta.fproj;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.fproj.logic.CheckAll;
import com.jhta.fproj.model.Jun_DAO;
import com.jhta.fproj.model.Jun_VO;
import com.jhta.fproj.model.PageVO;

@Controller


public class JunController {

	@Resource
	Jun_DAO dao;

	@RequestMapping("jun_List/{main}") 
	String view(@PathVariable("main") String main,Model model) {
		
		if (main.equals("course_insertReg")||main.equals("course_ModifyReg")||main.equals("course_Delete")) {
			
			return "jun_List/alert";
		}
		
		switch (main) {
		
		
		case "course_List":
			

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
			
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List4.jsp");
			
			break;
			
		case"p_Course_List1":
			
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List1.jsp");
			break;
			
		case"p_Course_List2":
			
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List2.jsp");
			break;
			
		case"p_Course_List3":
		
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List3.jsp");
				
			break;
			
		}
	
		return "home";

	}
	
	@ModelAttribute("data")
	Object data(@PathVariable("main") String main,Jun_VO vo,Model model,HttpSession session) {
		
		System.out.println(" jun 컨트롤러 진입 :" + vo);
		
		model.addAttribute("service", "jun_List");
		
		ArrayList<Jun_VO> arr = new ArrayList<>();
		ArrayList<Jun_VO> arr2 = new ArrayList<>();
		ArrayList<Jun_VO> arr3 = new ArrayList<>();
	
		CheckAll ca = new CheckAll();
		
		if(session.getAttribute("grade") != null) {
			if(session.getAttribute("grade").equals("teacher")) {
				vo.setCid((String)session.getAttribute("id"));
				
			}
		}
		
		Object res = null;

		switch (main) {

		case "course_register":
			System.out.println("과목등록  case: course_register:" + vo);
			res = dao.professor_list(vo);
			break;
		
		/*		관리자@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
		case "course_List":
			System.out.println("강의 전체:" + vo);
			res = dao.course_list(vo);

			break;

		case "course_List1":
			System.out.println("개강예정:" + vo);
			model.addAttribute("list", "List1");
			res = dao.course_list1(vo);

			break;
			
		case "course_List2":
			System.out.println("진행중:" + vo);
			res = dao.course_list2(vo);

			break;
			
		case "course_List3":
			System.out.println("종료:" + vo);
			res = dao.course_list3(vo);

			break;
			
	/*	case "course_List4":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: course_List4 �뱾�뼱�샂" + vo);
			res = dao.course_list4(vo);

			break;*/
			
		case "course_insertReg":
			System.out.println("관리자  case: insertReg:" + vo);
			System.out.println("@@@@@@@@@");
			System.out.println("@@@@@@@@@@@");
			System.out.println("@@@@@@@@@@@@@");
		
			
			
			arr.add(vo);
			arr2 = (ArrayList)dao.plist(vo);
			arr3 = (ArrayList)dao.clist(vo);
			

			for (Jun_VO jun_VO : arr3) {
				System.out.println("arr3:"+jun_VO);
			}
			System.out.println("--------------------------");
			for (Jun_VO jun_VO : arr2) {
				System.out.println("arr2:"+jun_VO);
			}
			System.out.println("--------------------------");
			for (Jun_VO jun_VO : arr) {
				System.out.println("arr:"+jun_VO);
			}
			
			
			if(ca.chkstr(arr)) {
				
				model.addAttribute("msg", "시간은 1~8교시만 가능합니다.");
				model.addAttribute("url", "course_register?mypage=true");
			} else if(ca.chktime2(arr, arr2)) {
				
				model.addAttribute("msg", "시간대가 겹칩니다.");
				model.addAttribute("url", "course_register?mypage=true");
			} 
			else if(ca.chkccode(arr, arr3)) {
				model.addAttribute("msg", "과목코드 에러입니다.강사와 코드를 확인하세요");
				model.addAttribute("url", "course_register?mypage=true");
				
			}
			else if(ca.chkcid(arr, arr2)) {
				model.addAttribute("msg", "강사의 id와 name이 불일치 합니다.");
				model.addAttribute("url", "course_register?mypage=true");
				
			}else {
				
				res = dao.course_insert(vo);

				model.addAttribute("msg", "등록성공");
				model.addAttribute("url", "course_Detail?ccode="+vo.getCcode()+"&cday="+vo.getCday()+"&mypage=true");
			}
			
			

			break;
			
			
		case "course_Detail":	
			System.out.println("과목 정보:" +vo);
			arr = (ArrayList)dao.course_detail(vo);
			
			System.out.println(ca.cinfo(arr));
			
			res = ca.cinfo(arr);
			
			break;
			
			
		case "course_Modify":	
			System.out.println("관리자  case: course_Modify:" + vo);
			res = dao.course_modify(vo);
			model.addAttribute("teacher", dao.course_modify1(vo));
			
			break;


			
			
			
			
		case "course_ModifyReg":

			System.out.println("과목 수정:" +vo);
			
			arr.add(vo);
			arr2 = (ArrayList)dao.plist(vo);
			
			if(ca.chkcid(arr, arr2)) {
				model.addAttribute("msg", "강사의 id와 name이 불일치 합니다.");
				model.addAttribute("url", "course_Modify?ccode="+vo.getCcode()+"&cday="+vo.getCday()+"&mypage=true");
				
			}else {
			
			res = dao.course_modifyReg(vo);

			model.addAttribute("msg", "수정 완료");
			model.addAttribute("url", "course_Detail?ccode=" + vo.getCcode()+"&mypage=true");
			}
			break;
		
			
			
			
			
			
			
		case "course_Delete":
			System.out.println("과목삭제:" + vo);
			res = dao.course_delete(vo);
	
			model.addAttribute("msg", "삭제 완료");
			model.addAttribute("url", "course_List?mypage=true");

			break;
			
			
			
		case "astudent_List":
			System.out.println("학생 목록:" + vo);
			res = dao.astudent_list(vo);
	
			break;
			
			
		case "astudent_Course_List":
			System.out.println("학생이 수강신청한 과목 목록:" + vo);
			res = dao.astudent_course_list(vo);
	
			break;
			
			
			
		case "professor_List":
			System.out.println("강사목록:" + vo);
			res = dao.professor_list(vo);
	
			break;
			
		case "professor_Course_List":
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
			System.out.println("강사의 강의목록:" + vo);
			res = dao.professor_course_list(vo);
	
			break;

			
			/*		강사@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
			
		case "p_Course_List":
			System.out.println("과목전체:" + vo);
			res = dao.p_course_list(vo);
	
			break;
			
		case "p_Course_List1":
			System.out.println("진행중인과목:" + vo);
			res = dao.p_course_list1(vo);
	
			break;
			
			
		case "p_Course_List2":
			System.out.println("종료된과목:" + vo);
			res = dao.p_course_list2(vo);
	
			break;
			
		case "p_Course_List3":
			System.out.println("개설예정과목:" + vo);
			res = dao.p_course_list3(vo);
	
			break;
			
			
			
			
		case "p_Astudent_List":
			System.out.println("강사  case: p_Astudent_List:" + vo);
			res = dao.p_astudent_list(vo);
	
			break;
		

			
		}
		

		return res;

	}


	
}