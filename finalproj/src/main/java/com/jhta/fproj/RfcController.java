package com.jhta.fproj;

import java.util.ArrayList;
import java.util.Arrays;

import javax.annotation.Resource;
import javax.mail.search.IntegerComparisonTerm;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.fproj.logic.CheckAll;
import com.jhta.fproj.logic.ConPayMail;
import com.jhta.fproj.logic.Paging;
import com.jhta.fproj.model.BsDAO;
import com.jhta.fproj.model.BsVO;
import com.jhta.fproj.model.MngUserVO;
import com.jhta.fproj.model.PageVO;

@Controller
@RequestMapping("Bs/{main}")
public class RfcController {
	
	@Resource
	BsDAO dao;
	
	@RequestMapping()
	String view(@PathVariable("main") String main) {
		
		if(main.equals("insertReg")
				||main.equals("deleteReg")
				||main.equals("payReg")) {
			
			return "Bs/alert";
		} 
		
		return "home";
	}
	@ModelAttribute("data")
	Object data(@PathVariable("main") String main,
			PageVO pvo ,BsVO vo,MngUserVO muvo, 
			Model model,HttpSession session) {
	
		model.addAttribute("service", "Bs");
		vo.setRid((String)session.getAttribute("id"));
		String grade = (String)session.getAttribute("grade");
		ConPayMail cpm = new ConPayMail(dao, muvo);
		
	
		System.out.println(vo);
		
		Paging paging = new Paging();
		CheckAll ca = new CheckAll();
		
		ArrayList<BsVO> arr = new ArrayList<>();
		ArrayList<BsVO> arr2 = new ArrayList<>();
		
		Object res = null;
		
		switch(main) {
			case "timetable"://시간표
				
				String [] str = {"월","화","수","목","금","토","일"};
				
				if(grade.equals("student")) {
				
					res = dao.list(vo);
					model.addAttribute("day", str);
				
				} else {
					
					res = dao.plist(vo);
					model.addAttribute("day", str);
					
				}
				
				break;
				
			case "registerfc":
				
				res = dao.mylist(vo);//내 수강신청 목록
				model.addAttribute("data2", res);
				
				//수강신청이 가능한 과목 목록
				vo.setTot((Integer)dao.reglisttot());
				pvo = paging.makePaging(pvo.getPage(),vo.getTot());
				model.addAttribute("data3", pvo);
				
				arr = (ArrayList<BsVO>)dao.reglistpaging(pvo);
				System.out.println("페이지:"+pvo);
				for(BsVO vv : arr) {
					vv.setTot((Integer)dao.tot(vv));
				}
				
				res = ca.cinfolist(arr);
				
				break;
				
			case "insertReg"://내 수강신청 목록에 추가
				
				arr = (ArrayList)dao.infosub(vo);//내가 선택한것
				arr2 = (ArrayList)dao.list(vo);//시간표용 리스트
				
				arr.get(0).setTot((Integer)dao.tot(vo));
				
				System.out.println("arr:"+arr.get(0));
		
				if(ca.chktime(arr,arr2)){//true일때-겹침
					model.addAttribute("msg", "이미 신청한 수업과 시간이 겹칩니다");
					
				} else {//false일때-안겹침
					arr.get(0).setRid((String)session.getAttribute("id"));
					
					if(arr.get(0).getCtotal()-arr.get(0).getTot()==0) {
						model.addAttribute("msg", "인원이 가득찼습니다");
					} else {
						res = dao.insertregist(arr.get(0));
						model.addAttribute("msg", "수강신청 완료");
					}
				}
				model.addAttribute("url", "registerfc?mypage=true");
				break;
				
			case "deleteReg"://내 수강신청목록에서 삭제
				res = dao.deleteregist(vo);
				
				model.addAttribute("msg", "취소 완료");
				model.addAttribute("url", "registerfc?mypage=true");
				break;
				
			case "payReg":
				
				model.addAttribute("msg", "결제 성공! 결제내역은 이메일에서 확인 가능");
				model.addAttribute("url", "registerfc?mypage=true");
				
				if(vo.getCpprice()==0) {
					
					model.addAttribute("msg", "결제할 과목이 없습니다.");
					model.addAttribute("url", "registerfc?mypage=true");
					
				} else {
					if(vo.getCpnum()==null) {
						model.addAttribute("msg", "카드번호를 입력해주세요");
						model.addAttribute("url", "payment?mypage=true");
					} else {
						res = dao.insertpayment(vo);//결제내역등록
						res = dao.chkpayment(vo);//rpay-결제로 변경
						cpm.makemessage((String)session.getAttribute("id"));
						
					}
				}
			
				break;
				
			case "totpay"://정산
				
				String name = vo.getName();
				System.out.println("페이지이름:"+name);
				
				if(name == null) {
					
					res = dao.cplist(vo);
					
				} else {
					
					switch(name){
					
					case "course"://과목별
						
						res= dao.ccplist();
						
						model.addAttribute("data2", dao.totlist());
						
						break;
						
					case "date"://연별,월별
						
						arr =(ArrayList<BsVO>)dao.cplist(vo);
						if(vo.getSchYear()!=null) {
							int yearTot = 0;
							System.out.println("year:"+vo.getSchYear());
						
							res = ca.cal(arr);
							
							for(Integer ii : ca.cal(arr)) {
								yearTot +=ii;
							}
							model.addAttribute("yearTot", yearTot);
						}
						
						break;
					}
				}
			
				break;
				
			case "courseinfo"://과목소개
				
				res = dao.clist();
				break;
				
			case "memberlist"://회원리스트
				
				res = dao.list();
				model.addAttribute("data3",paging.makePaging(pvo.getPage(), (Integer)dao.memtot()));
				break;
		}
	
		return res;
	}
}
