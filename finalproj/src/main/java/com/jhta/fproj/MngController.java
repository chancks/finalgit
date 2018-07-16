package com.jhta.fproj;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhta.fproj.logic.Joinlogic;
import com.jhta.fproj.model.MngDAO;
import com.jhta.fproj.model.MngUserVO;

@Controller
@RequestMapping("manager/{main}")
public class MngController {

	@Resource
	MngDAO dao;
	
	@RequestMapping()
	String view(@PathVariable("main") String main,
			MngUserVO user,Model model,
			HttpSession session,HttpServletRequest request) {
		
		Joinlogic jl = new Joinlogic(dao);
		model.addAttribute("service", "manager");
		
		String res = "manager/"+main;
		
		switch(main) {
		
/*		case "join" :

			break;*/
			
		case "idchk" :
			
			String chk="";

			if(!user.getAid().equals("")) {
				chk=jl.idchk(user);
			}
			
			model.addAttribute("idchk",chk);
			model.addAttribute("user", user);
			
			main="join";
			/*res = "manager/join";*/
			
			/*"redirect:/manager/join";*/
			break;
			
			

		case "joinreg" :

			String msg = user.getAname()+"님 회원가입이 완료되었습니다."; 
			String url = "../";
			
			if(!jl.joinreg(user)) {
				
				System.out.println(user);
				model.addAttribute("user",user);
				
				main="join";
				break;
				/*return "manager/join";*/
			}
			
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			
			return "manager/alert";
		
		case "login" :

			msg = "로그인 실패";
			
			if(dao.login(user)!=null) {
				System.out.println("로그인");
				
				user = dao.login(user);
				
				session.setAttribute("id", user.getAid());
				session.setAttribute("grade", user.getAgrade());
				
				msg = user.getAname()+"님 반갑습니다.";
			}
			
			model.addAttribute("msg", msg);
			model.addAttribute("url", "../");
			
			return "manager/alert";
			
		case "logout" :
			
			session.invalidate();
			
			model.addAttribute("url", "../");
			
			return "manager/alert";
		
		case "myinfo" :
		case "modify" :
			
			System.out.println("서비스"+main);
			
			user = new MngUserVO();
			user.setAid((String)session.getAttribute("id"));
			
			
			model.addAttribute("user",dao.chkid(user));
			
			System.out.println(model.toString());
			
			/*res="manager/"+main;*/
			
			break;
			
		case "modifyreg" :
		 	
			System.out.println("수정수정");

			String filename = jl.fileUP(user.getUp1(), request);
			user.setAupfile(filename);
			
			dao.modify(user);
			
			main="myinfo";
			/*return "redirect:/manager/myinfo";*/
			break;
		
	
		case "filedelete" :
			
			System.out.println("파일 델레트");
			user = new MngUserVO();
			user.setAid((String)session.getAttribute("id"));
			
			MngUserVO vo = (MngUserVO) dao.chkid(user);
			
			System.out.println(request);
			jl.fdelete(user, request);
			dao.fdelete(user);
			
			main="myinfo";
			break;
			/*return "redirect:/manager/myinfo";*/
			
	
		case "memberlist":
			
			model.addAttribute("data", dao.list());
			
		}
		
		
		model.addAttribute("main", main);
		return "home";
	}
	
}
