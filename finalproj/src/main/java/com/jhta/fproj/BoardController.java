package com.jhta.fproj;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.fproj.logic.Paging;
import com.jhta.fproj.model.BoardDAO;
import com.jhta.fproj.model.BoardVO;
import com.jhta.fproj.model.Jun_DAO;
import com.jhta.fproj.model.Jun_VO;
import com.jhta.fproj.model.MngDAO;
import com.jhta.fproj.model.MngUserVO;
import com.jhta.fproj.model.PageVO;

@Controller
@RequestMapping("board/{main}")
public class BoardController {

	@Resource
	BoardDAO dao;
	MngDAO mdao;
	Jun_DAO jdao;
	Object res = null;
	
	Paging paging = new Paging();
	
	@RequestMapping()
	String boardView(@PathVariable("main") String main, Model model, HttpSession session) {
	
		if(main.equals("qnaInsertReg") || main.equals("qnaModifyReg")
			|| main.equals("qnaDeleteReg") || main.equals("qnaReplyReg")
			|| main.equals("noticeInsertReg") || main.equals("noticeModifyReg")
			|| main.equals("noticeDeleteReg") || main.equals("reviewInsertReg")
			|| main.equals("reviewModifyReg") || main.equals("reviewDeleteReg") 
			){
			return "board/alert";
		}
		
		model.addAttribute("service", "board");
		model.addAttribute("main","boardList");
		return "home";
	}
	
	@ModelAttribute("qna")
	Object qna(@PathVariable("main") String main,BoardVO vo, PageVO pvo, Model model, MngUserVO mvo) {
		
		switch (main) {
			case "qnaList":
				vo.setTot((Integer)dao.qnaTotalCount(vo));
				pvo = paging.makePaging(pvo.getPage(),vo.getTot());
				vo.setStart2(pvo.getStart());
				vo.setEnd2(pvo.getEnd());
				res = dao.qnaList(vo);
				model.addAttribute("data3", pvo);
				model.addAttribute("List","qnaList.jsp");
				break;
			case "qnaDetail":
				res = dao.qnaDetail(vo);
				model.addAttribute("List","qnaDetail.jsp");
				break;
			case "qnaInsertForm":
				model.addAttribute("List","qnaInsertForm.jsp");
				break;
			case "qnaInsertReg":
                res = dao.qnaInsert(vo);
	                model.addAttribute("msg", "작성되었습니다.");
	                model.addAttribute("url", "qnaDetail?id="+vo.getId());
				break;
			case "qnaReply":
				res = dao.qnaReply(vo);
				model.addAttribute("List","qnaReply.jsp");
				break;	
			case "qnaReplyReg":
				res = dao.qnaReplyReg(vo);
				model.addAttribute("msg", "작성되었습니다.");
				model.addAttribute("url", "qnaList");
				break;
			case "qnaModify":
				res = dao.qnaModify(vo);
				model.addAttribute("List","qnaModify.jsp");
				break;
			case "qnaModifyReg":
				res = dao.qnaPwChk(vo);
				model.addAttribute("List","qnaModifyReg.jsp");
				if(dao.qnaPwChk(vo)!=null) {
	                res = dao.qnaModifyReg(vo);
	                model.addAttribute("msg", "수정되었습니다.");
	                model.addAttribute("url", "qnaDetail?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해주세요.");
	                model.addAttribute("url", "qnaModify?id="+vo.getId());
	            }
	            break;
			case "qnaDelete":
				res = dao.qnaDelete(vo);
				model.addAttribute("List","qnaDelete.jsp");
				break;
			case "qnaDeleteReg":
				res = dao.qnaPwChk(vo);
		       if(dao.qnaPwChk(vo)!=null) {
	            	res = dao.qnaDelete(vo);
	                res = dao.qnaDeleteReg((BoardVO) res);
	                model.addAttribute("msg", "삭제되었습니다.");
	                model.addAttribute("url", "qnaList");
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해주세요.");
	                model.addAttribute("url", "qnaDelete?id="+vo.getId());
	            }        
	            break;
		}
	    		
	 	return res;
	}
         
    @ModelAttribute("notice")
	Object notice(@PathVariable("main") String main, BoardVO vo, PageVO pvo, Model model) {
				
			switch (main) {
			case "noticeList":
				System.out.println(vo);
				vo.setTot((Integer)dao.noticeTotalCount(vo)); //게시물 갯수
				System.out.println("mdoel : "+model);
				System.out.println(vo.getTot());
				pvo = paging.makePaging(pvo.getPage(),vo.getTot()); //페이징
				vo.setStart2(pvo.getStart()); //페이징 처음
				vo.setEnd2(pvo.getEnd()); //페이징 마지막
				res = dao.noticeList(vo);
				model.addAttribute("data3", pvo);
				model.addAttribute("List","noticeList.jsp");
				break;
			case "noticeDetail":
				res = dao.noticeDetail(vo);
				model.addAttribute("List","noticeDetail.jsp");
				break;
			case "noticeInsertForm":
				model.addAttribute("List","noticeInsertForm.jsp");
				break;
			case "noticeInsertReg":
                res = dao.noticeInsert(vo);
	                model.addAttribute("msg", "작성되었습니다.");
					model.addAttribute("url","noticeDetail?id="+vo.getId());
				break;
			case "noticeModify":
				res = dao.noticeModify(vo);
				model.addAttribute("List","noticeModify.jsp");
				break;
			case "noticeModifyReg":
				res = dao.noticePwChk(vo);
				if(dao.noticePwChk(vo)!=null) {
	                res = dao.noticeModifyReg(vo);
	                model.addAttribute("msg", "수정되었습니다.");
	                model.addAttribute("url", "noticeDetail?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해주세요.");
	                model.addAttribute("url", "noticeModify?id="+vo.getId());
	            }
	            break;
			case "noticeDelete":
				res = dao.noticeDelete(vo);
				model.addAttribute("List","noticeDelete.jsp");
				break;
			case "noticeDeleteReg":
				res = dao.noticePwChk(vo);
	            if(dao.noticePwChk(vo)!=null) {
	            	res = dao.noticeDelete(vo);
	                res = dao.noticeDeleteReg((BoardVO) res);
	                model.addAttribute("msg", "삭제되었습니다.");
	                model.addAttribute("url", "noticeList");
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해주세요.");
	                model.addAttribute("url", "noticeDelete?id="+vo.getId());
	            }        
	            break;
		}
		
		return res;
		
	}
	    
	    
	@ModelAttribute("review")
	Object review(@PathVariable("main") String main, BoardVO vo, PageVO pvo, Jun_VO jvo, HttpSession session, Model model) {
			
		if(session.getAttribute("grade") != null) {
			if(session.getAttribute("grade").equals("teacher")) {
				jvo.setCid((String)session.getAttribute("id"));
				
			}
		}
		
			switch (main) {
			case "reviewList":
				vo.setTot((Integer)dao.reviewTotalCount(vo));
				pvo = paging.makePaging(pvo.getPage(),vo.getTot());
				vo.setStart2(pvo.getStart());
				vo.setEnd2(pvo.getEnd());
				res = dao.reviewList(vo);
				model.addAttribute("List","reviewList.jsp");
				model.addAttribute("data3", pvo);
				break;
			case "reviewDetail":
				res = dao.reviewDetail(vo);
				model.addAttribute("List","reviewDetail.jsp");
				break;
			case "reviewInsertForm":
				System.out.println("reviewInsertForm으로 들어옴@@@@@@@@@@@@@@@@@");
				res = dao.professor_list(jvo);
				System.out.println("res = jdao.professor_list(jvo); 실행시킴  :"+ res);
				System.out.println("jvo는???   :"+ jvo);
				System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
				
				model.addAttribute("List","reviewInsertForm.jsp");
				System.out.println("ㅡㅡmodel.addAttribute(\"List\",\"reviewInsertForm.jsp\")  실행됨ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
				
				break;
			case "reviewInsertReg":
								res = dao.reviewInsert(vo);
	                model.addAttribute("msg", "작성되었습니다.");
					model.addAttribute("url", "reviewDetail?id="+vo.getId());
				break;
			case "reviewModify":
				res = dao.reviewModify(vo);
				model.addAttribute("List","reviewModify.jsp");
				break;
			case "reviewModifyReg":
				res = dao.reviewPwChk(vo);
				if(dao.reviewPwChk(vo)!=null) {
	                res = dao.reviewModifyReg(vo);
	                model.addAttribute("msg", "수정되었습니다.");
	                model.addAttribute("url", "reviewDetail?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해주세요.");
	                model.addAttribute("url", "reviewModify?id="+vo.getId());
	            }
	            break;
			case "reviewDelete":
				res = dao.reviewDelete(vo);
				model.addAttribute("List","reviewDelete.jsp");
				break;
			case "reviewDeleteReg":
				res = dao.reviewPwChk(vo);
	            if(dao.reviewPwChk(vo)!=null) {
	            	res = dao.reviewDelete(vo);
	                res = dao.reviewDeleteReg((BoardVO) res);
	                model.addAttribute("msg", "삭제되었습니다.");
	                model.addAttribute("url", "reviewList");
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해주세요.");
	                model.addAttribute("url", "reviewDelete?id="+vo.getId());
	            }        
	            break;
		}
		
		return res;
		
	}
}
