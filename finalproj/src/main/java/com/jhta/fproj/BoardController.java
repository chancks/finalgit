package com.jhta.fproj;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.fproj.logic.Paging;
import com.jhta.fproj.model.BoardDAO;
import com.jhta.fproj.model.BoardVO;
import com.jhta.fproj.model.BsVO;
import com.jhta.fproj.model.MngDAO;
import com.jhta.fproj.model.MngUserVO;
import com.jhta.fproj.model.PageVO;

@Controller
@RequestMapping("board/{main}")
public class BoardController {

	@Resource
	BoardDAO dao;
	MngDAO mdao;
	Object res = null;
	
	
	Paging paging = new Paging();
	
	ArrayList<BsVO> arr = new ArrayList<>();
	
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
				vo.setTot((Integer)dao.qnaTotalCount());
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
				vo.setPname(mvo.getAname());
				model.addAttribute("user",mvo);
				model.addAttribute("List","qnaInsertForm.jsp");
				break;
			case "qnaInsertReg":
                res = dao.qnaInsert(vo);
				if(dao.qnaPwChk(vo)!=null) {
	                model.addAttribute("msg", "�ۼ��Ǿ����ϴ�.");
	                model.addAttribute("url", "qnaDetail?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� Ȯ�����ּ���.");
	                model.addAttribute("url", "qnaInsertForm");
	            }
				break;
			case "qnaReply":
				res = dao.qnaReply(vo);
				model.addAttribute("List","qnaReply.jsp");
				break;	
			case "qnaReplyReg":
				res = dao.qnaReplyReg(vo);
				model.addAttribute("msg", "�亯�� �ۼ��Ǿ����ϴ�.");
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
	                model.addAttribute("msg", "�����Ǿ����ϴ�.");
	                model.addAttribute("url", "qnaDetail?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� Ȯ�����ּ���.");
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
	                model.addAttribute("msg", "�����Ǿ����ϴ�.");
	                model.addAttribute("url", "qnaList");
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� Ȯ�����ּ���.");
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
				vo.setTot((Integer)dao.noticeTotalCount());
				pvo = paging.makePaging(pvo.getPage(),vo.getTot());
				vo.setStart2(pvo.getStart());
				vo.setEnd2(pvo.getEnd());
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
				if(dao.noticePwChk(vo)!=null) {
	                model.addAttribute("msg", "�ۼ��Ǿ����ϴ�.");
					model.addAttribute("url","noticeDetail?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� Ȯ�����ּ���.");
	                model.addAttribute("url", "noticeInsertForm");
	            }
				break;
			case "noticeModify":
				res = dao.noticeModify(vo);
				model.addAttribute("List","noticeModify.jsp");
				break;
			case "noticeModifyReg":
				res = dao.noticePwChk(vo);
				if(dao.noticePwChk(vo)!=null) {
	                res = dao.noticeModifyReg(vo);
	                model.addAttribute("msg", "�����Ǿ����ϴ�.");
	                model.addAttribute("url", "noticeDetail?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� Ȯ�����ּ���.");
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
	                model.addAttribute("msg", "�����Ǿ����ϴ�.");
	                model.addAttribute("url", "noticeList");
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� Ȯ�����ּ���.");
	                model.addAttribute("url", "noticeDelete?id="+vo.getId());
	            }        
	            break;
		}
		
		return res;
		
	}
	    
	    
	@ModelAttribute("review")
	Object review(@PathVariable("main") String main, BoardVO vo, PageVO pvo, Model model) {
				
			switch (main) {
			case "reviewList":
				vo.setTot((Integer)dao.reviewTotalCount());
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
				model.addAttribute("List","reviewInsertForm.jsp");
				break;
			case "reviewInsertReg":
				res = dao.reviewInsert(vo);
				if(dao.reviewPwChk(vo)!=null) {
	                model.addAttribute("msg", "�ۼ��Ǿ����ϴ�.");
					model.addAttribute("url", "reviewDetail?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� Ȯ�����ּ���.");
	                model.addAttribute("url", "reviewInsertForm");
	            }
				break;
			case "reviewModify":
				res = dao.reviewModify(vo);
				model.addAttribute("List","reviewModify.jsp");
				break;
			case "reviewModifyReg":
				res = dao.reviewPwChk(vo);
				if(dao.reviewPwChk(vo)!=null) {
	                res = dao.reviewModifyReg(vo);
	                model.addAttribute("msg", "�����Ǿ����ϴ�.");
	                model.addAttribute("url", "reviewDetail?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� Ȯ�����ּ���.");
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
	                model.addAttribute("msg", "�����Ǿ����ϴ�.");
	                model.addAttribute("url", "reviewList");
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� Ȯ�����ּ���.");
	                model.addAttribute("url", "reviewDelete?id="+vo.getId());
	            }        
	            break;
		}
		
		return res;
		
	}
}
