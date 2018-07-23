package com.jhta.fproj;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhta.fproj.logic.Joinlogic;
import com.jhta.fproj.logic.Maillogic;
import com.jhta.fproj.logic.Paging;
import com.jhta.fproj.logic.Schval;
import com.jhta.fproj.logic.Smslogic;
import com.jhta.fproj.model.MngDAO;
import com.jhta.fproj.model.MngUserVO;
import com.jhta.fproj.model.PageVO;

@Controller
@RequestMapping("manager/{main}")
public class MngController {

	@Resource
	MngDAO dao;
	
	@RequestMapping()
	String view(@PathVariable("main") String main,
			MngUserVO user,Model model,
			HttpSession session,HttpServletRequest request,BindingResult errors) {
		
		Joinlogic jl = new Joinlogic(dao);
		model.addAttribute("service", "manager");
		Paging paging = new Paging();
		
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
			
			if(!(user.getAgrade().equals("student"))) {
				model.addAttribute("mypage", true);
			}
			
			main="join";
			
			/*res = "manager/join";*/
			
			/*"redirect:/manager/join";*/
			break;
			
			

		case "joinreg" :

			String msg = user.getAname()+"님 회원가입이 완료되었습니다."; 
			String url = "../";
			
			if(!user.getAgrade().equals("student")) {
				msg=user.getAname()+"님 등록 완료.";
			}
			System.out.println();
			
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
			url = "/mvc/manager/loginf";
			if(dao.login(user)!=null) {
				System.out.println("로그인");
				
				user = dao.login(user);
				
				session.setAttribute("id", user.getAid());
				session.setAttribute("grade", user.getAgrade());
				
				msg = user.getAname()+"님 반갑습니다.";
				url = "../";
			}
			
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			
			return "manager/alert";
			
		case "logout" :
			
			session.invalidate();
			
			model.addAttribute("url", "../");
			
			return "manager/alert";
		
		case "myinfo" :
			
			String str = (String)session.getAttribute("grade");
			
			if(!(str.equals("admin")||str.equals("administ")))
				user.setAid((String)session.getAttribute("id"));
			
			model.addAttribute("mypage", true);
			model.addAttribute("user",dao.chkid(user));
			
			System.out.println(model.toString());
			
			break;
		case "modify" :
			
			System.out.println("서비스"+main);
			
			
			user.setAid((String)session.getAttribute("id"));
			
			MngUserVO modivo = (MngUserVO) dao.chkid(user);
	
			if(modivo.getAinfo()!=null){
				modivo.setAinfo(modivo.getAinfo().trim().replaceAll("<br>", "\n"));
			}
			model.addAttribute("mypage", true);
			model.addAttribute("user",modivo);
			
			System.out.println(model.toString());
			
			break;
			
		case "modifyreg" :
		 	
			System.out.println("수정수정");

			
			if(user.getAupfile()==null) {
				user.setAupfile("");

			}
			
			if(user.getUp1().getOriginalFilename()!="") {
				if(user.getAupfile()!="") {
					jl.fdelete(user, request);
				}
				
				String filename = jl.fileUP(user.getUp1(), request);
				user.setAupfile(filename);
			}
			

			dao.modify(user);
			
			return "redirect:/manager/myinfo";
			
	
		case "filedelete" :
			
			System.out.println("파일 델레트");
			user = new MngUserVO();
			user.setAid((String)session.getAttribute("id"));
			
			MngUserVO vo = (MngUserVO) dao.chkid(user);
			
			System.out.println(vo.getAupfile());
			System.out.println(request);
			
			jl.fdelete(vo, request);
			dao.fdelete(user);
			
			return "redirect:/manager/myinfo";
			
		case "teacherinfo":
			
			model.addAttribute("data", dao.list());
			
			break;
		
		case "schidreg" :

			System.out.println(user);
			
			new Schval().validate(user, errors);

			main = "schid";
			
			MngUserVO sch = dao.sch(user);
			
			if(!errors.hasErrors()) {
				if(sch!=null) {
					String key = new Maillogic(dao, sch).makekey();
					model.addAttribute("key",key);
					model.addAttribute("user", sch);
					model.addAttribute("auth", true);
					break;
				}
				errors.rejectValue("ainfo", "invalid.ainfo","이름과 이메일이 일치하지 않습니다.");
			}
			
			break;
			
		case "schpwreg" :

			main = "schpw";
			
			new Schval().validate(user, errors);
			
			MngUserVO schpw = dao.schpw(user);
			
			if(!errors.hasErrors()) {
				if(schpw!=null) {
					
					System.out.println("===============================");
					System.out.println(schpw);
					System.out.println("===============================");
					
					String key = new Smslogic(dao,schpw).send();
					
					model.addAttribute("key", key);
					model.addAttribute("user", schpw);
					model.addAttribute("auth", true);
					break;
				}
				
				errors.rejectValue("ainfo", "inavalid.ainfo","일치하는 회원정보가 없습니다.");
			}
			
			model.addAttribute("user", user);
			break;
			
		case "delete" :
			System.out.println("들어오나?@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+request.getParameter("aid"));
			
			dao.udelete(request.getParameter("aid"));	
			
			
			
			model.addAttribute("url","/mvc/Bs/memberlist?mypage=true");
			main="alert";
			
			break;
		}
		
		
			
		model.addAttribute("main", main);
		return "home";
	}
	
}
