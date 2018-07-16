package com.jhta.fproj;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.fproj.model.Jun_DAO;
import com.jhta.fproj.model.Jun_VO;

@Controller


public class JunController {

	@Resource
	Jun_DAO dao;

	@RequestMapping("jun_List/{main}") 
	String view(@PathVariable("main") String main,Model model) {
		System.out.println("jun_List/{main} �깞�쓬@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		System.out.println("而⑦듃濡ㅻ윭 alert 媛��뒗 if臾� ��湲곗쟾");
		System.out.println(main+"   硫붿씤�� �뼱�뵒�씤媛�!@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");

		
		if (main.equals("course_insertReg")||main.equals("course_ModifyReg")||main.equals("course_Delete")) {
			System.out.println("而⑦듃濡ㅻ윭 alert 媛��뒗 if臾� �깘");
			return "jun_List/alert";
		}
		
		switch (main) {
		
		
		case "course_List":
			System.out.println("由ы�섏뒪�듃留듯븨 course_List �뱾�뼱�샂");

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
			System.out.println("由ы�섏뒪�듃留듯븨 p_Course_List �뱾�뼱�샂");
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List4.jsp");
			
			break;
			
		case"p_Course_List1":
			System.out.println("由ы�섏뒪�듃留듯븨 p_Course_List1 �뱾�뼱�샂");
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List1.jsp");
			break;
			
		case"p_Course_List2":
			System.out.println("由ы�섏뒪�듃留듯븨 p_Course_List2 �뱾�뼱�샂");
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List2.jsp");
			break;
			
		case"p_Course_List3":
			System.out.println("由ы�섏뒪�듃留듯븨 p_Course_List3 �뱾�뼱�샂");
			model.addAttribute("service", "jun_List");
			model.addAttribute("main",  "p_Course_List");
			model.addAttribute("list", "p_Course_List3.jsp");
				
			break;
			
		}
	
		return "home";

	}
	
	@ModelAttribute("data")
	Object data(@PathVariable("main") String main,Jun_VO vo, Model model) {

		model.addAttribute("service", "jun_List");
		System.out.println(" 而⑦듃濡ㅻ윭�뿉�꽌 �뼱�듃由щ럭�듃 data媛믪쓣 諛쏆쓬 :" + vo);

		Object res = null;

		switch (main) {

		case "course_register":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: course_register �뱾�뼱�샂" + vo);
			res = dao.professor_list(vo);
			break;
		
		/*		愿�由ъ옄媛� 蹂대뒗 紐⑸줉蹂�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
		case "course_List":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: course_List �뱾�뼱�샂" + vo);
			res = dao.course_list(vo);

			break;

		case "course_List1":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: course_List1 �뱾�뼱�샂" + vo);
			model.addAttribute("list", "List1");
			res = dao.course_list1(vo);

			break;
			
		case "course_List2":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: course_List2 �뱾�뼱�샂" + vo);
			res = dao.course_list2(vo);

			break;
			
		case "course_List3":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: course_List3 �뱾�뼱�샂" + vo);
			res = dao.course_list3(vo);

			break;
			
	/*	case "course_List4":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: course_List4 �뱾�뼱�샂" + vo);
			res = dao.course_list4(vo);

			break;*/
			
		case "course_insertReg":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: insertReg �뱾�뼱�샂" + vo);
			System.out.println("@@@@@@@@@");
			System.out.println("@@@@@@@@@@@");
			System.out.println("@@@@@@@@@@@@@");
			
			
			res = dao.course_insert(vo);

			model.addAttribute("msg", "�옉�꽦�셿猷�");
			model.addAttribute("url", "course_Detail?ccode="+vo.getCcode());

			break;
			
			
		case "course_Detail":	
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: course_Detail �뱾�뼱�샂" +vo);
			res = dao.course_detail(vo);
			
			System.out.println(vo.getCstart());
			System.out.println(vo.getCfinish());
			
			break;
			
			
		case "course_Modify":	
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: course_Modify �뱾�뼱�샂" + vo);
			res = dao.course_modify(vo);
			
			break;
		
		case "course_ModifyReg":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: course_ModifyReg �뱾�뼱�샂" +vo);
			res = dao.course_modifyReg(vo);

			model.addAttribute("msg", "�닔�젙�셿猷�");
			model.addAttribute("url", "course_Detail?ccode=" + vo.getCcode());

			break;
		
		case "course_Delete":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: course_Delete �뱾�뼱�샂" + vo);
			res = dao.course_delete(vo);
	
			model.addAttribute("msg", "�궘�젣 �셿猷�");
			model.addAttribute("url", "course_List");

			break;
			
			
			
		case "astudent_List":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: astudent_List �뱾�뼱�샂" + vo);
			res = dao.astudent_list(vo);
	
			break;
			
			
		case "astudent_Course_List":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: astudent_Course_List �뱾�뼱�샂" + vo);
			res = dao.astudent_course_list(vo);
	
			break;
			
			
			
		case "professor_List":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: professor_List �뱾�뼱�샂" + vo);
			res = dao.professor_list(vo);
	
			break;
			
		case "professor_Course_List":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: professor_Course_List �뱾�뼱�샂" + vo);
			res = dao.professor_course_list(vo);
	
			break;

			
			/*		媛뺤궗媛� 蹂대뒗 紐⑸줉@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
			
		case "p_Course_List":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: p_Course_List �뱾�뼱�샂" + vo);
			res = dao.p_course_list(vo);
	
			break;
			
		case "p_Course_List1":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: p_Course_List1 �뱾�뼱�샂" + vo);
			res = dao.p_course_list1(vo);
	
			break;
			
			
		case "p_Course_List2":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: p_Course_List2 �뱾�뼱�샂" + vo);
			res = dao.p_course_list2(vo);
	
			break;
			
		case "p_Course_List3":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: p_Course_List3 �뱾�뼱�샂" + vo);
			res = dao.p_course_list3(vo);
	
			break;
			
			
			
			
		case "p_Astudent_List":
			System.out.println("而⑦듃濡ㅻ윭�뿉�꽌  case: p_Course_List �뱾�뼱�샂" + vo);
			res = dao.p_astudent_list(vo);
	
			break;
		

			
		}
		

		return res;

	}


	
}