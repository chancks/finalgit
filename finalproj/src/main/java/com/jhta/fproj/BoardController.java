package com.jhta.fproj;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.jhta.fproj.model.BoardDAO;
import com.jhta.fproj.model.BoardVO;

@Controller
@RequestMapping("board/{main}")
public class BoardController {

	@Resource
	BoardDAO dao;
	Object res = null;
	
	@RequestMapping()
	String boardView(@PathVariable("main") String main,Model model) {
	
	//	String res = "board/"+main;
		System.out.println("boardview ��ó��~~~~~~~~~~~~~~~~~~~~~");
		
		if(main.equals("qnaInsertReg") || main.equals("qnaModifyReg")
			|| main.equals("qnaDeleteReg") || main.equals("qnaReplyReg")
			|| main.equals("noticeInsertReg") || main.equals("noticeModifyReg")
			|| main.equals("noticeDeleteReg") || main.equals("noticeReplyReg")
			){
			System.out.println("boardView:boardView if��~~~~~~~~~~~~~~~~~~~");
			return "board/alert";
		}
		
		System.out.println("boardView:boardView ��ó��~~~~~~~~~~~~~~~~~~~~~~");
		
		model.addAttribute("service", "board");
		System.out.println(" ��ó��~~~~~~~~~~~~~~~~~~~~~~");
		return "home";
	}
	
	@ModelAttribute("qna")
	Object qna(@PathVariable("main") String main, BoardVO vo, Model model) {

				System.out.println("qna �����Դϴ�~~~~~~~~~~~~~:"+main);
				
				
		
		switch (main) {
			case "qnaList":
				vo.setCount((Integer) dao.qnaTotalCount());
				System.out.println("777777777777777777777777"+vo.getCount());
				res = dao.qnaList(vo); //��� �������� res
				//res = pagelogic.makePaging(vo.getPage(), vo.getCount());
				
			//	res = dao.qnaTotalCount();
				System.out.println("2222222222222222222" + res);
				break;
			case "qnaDetail":
				System.out.println("detail : "+vo);
				res = dao.qnaDetail(vo);
				break;
			case "qnaInsertReg":
				System.out.println("�μ�Ʈ"+vo);
				res = dao.qnaInsert(vo);
				System.out.println("�μ�Ʈ2222222222222"+vo);
				model.addAttribute("msg", "�ۼ��Ϸ�");
				model.addAttribute("url", "qnaDetail?id="+vo.getId());
				break;
			case "qnaReply":
				res = dao.qnaReply(vo);
				break;	
			case "qnaReplyReg":
				System.out.println("��Ʈ�ѷ� vo ������?"+vo);
				res = dao.qnaReplyReg(vo);
				System.out.println("��Ʈ�ѷ� vo "+vo);
				model.addAttribute("msg", "�ۼ��Ϸ�");
				model.addAttribute("url", "qnaList");
				break;
			case "qnaModify":
				res = dao.qnaModify(vo);
				break;
			case "qnaModifyReg":
				res = dao.qnaPwChk(vo);
				if(dao.qnaPwChk(vo)!=null) {
	                res = dao.qnaModifyReg(vo);
	                model.addAttribute("msg", "�����Ϸ�");
	                model.addAttribute("url", "qnaDetail?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� �ٽ� Ȯ�����ּ���");
	                model.addAttribute("url", "qnaModify?id="+vo.getId());
	            }
	            break;
			case "qnaDelete":
				res = dao.qnaDelete(vo);
				System.out.println(vo);
				System.out.println("qnaDelete : "+ res);
				break;
			case "qnaDeleteReg":
				res = dao.qnaPwChk(vo);
				System.out.println("qnaDeleteReg ��ó�� : "+ res);
	            if(dao.qnaPwChk(vo)!=null) {
	            	//BoardVO vo1 = (BoardVO) dao.qnaPwChk(vo);
	            	res = dao.qnaDelete(vo);
	            	System.out.println("if�� ��ó�� : "+res);
	                res = dao.qnaDeleteReg((BoardVO) res);
	                System.out.println("if����ó�� : "+dao.qnaPwChk(vo));
	                model.addAttribute("msg", "�����Ϸ�");
	                model.addAttribute("url", "qnaList");
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� �ٽ� Ȯ�����ּ���");
	                model.addAttribute("url", "qnaDelete?id="+vo.getId());
	            }        
	            System.out.println("if�� ��ó�� : "+dao.qnaPwChk(vo));
	            break;
		}
	    		
	 	return res;
	}
         
    @ModelAttribute("notice")
	Object notice(@PathVariable("main") String main, BoardVO vo, Model model) {
				
				System.out.println("notice �����Դϴ�~~~~~~~~~~~~~:"+main);
				
			switch (main) {
			case "noticeList":
				res = dao.noticeList(vo);
				break;
			case "noticeDetail":
				System.out.println("detail : "+vo);
				res = dao.noticeDetail(vo);
				
				break;
			case "noticeInsertReg":
				System.out.println("�μ�Ʈ"+vo);
				res = dao.noticeInsert(vo);
				System.out.println("�μ�Ʈ2222222222222"+vo);
				model.addAttribute("msg", "�ۼ��Ϸ�");
				model.addAttribute("url", "noticeDetail?id="+vo.getId());
				break;
			case "noticeModify":
				res = dao.noticeModify(vo);
				break;
			case "noticeModifyReg":
				res = dao.noticePwChk(vo);
				if(dao.noticePwChk(vo)!=null) {
	                res = dao.noticeModifyReg(vo);
	                model.addAttribute("msg", "�����Ϸ�");
	                model.addAttribute("url", "noticeDetail?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� �ٽ� Ȯ�����ּ���");
	                model.addAttribute("url", "noticeModify?id="+vo.getId());
	            }
	            break;
			case "noticeDelete":
				res = dao.noticeDelete(vo);
				System.out.println("noticeDelete : "+ res);
				break;
			case "noticeDeleteReg":
				res = dao.noticePwChk(vo);
	            if(dao.noticePwChk(vo)!=null) {
	            	res = dao.noticeDelete(vo);
	                res = dao.noticeDeleteReg((BoardVO) res);
	                model.addAttribute("msg", "�����Ϸ�");
	                model.addAttribute("url", "noticeList");
	            }else {
	            	model.addAttribute("msg", "��й�ȣ�� �ٽ� Ȯ�����ּ���");
	                model.addAttribute("url", "noticeDelete?id="+vo.getId());
	            }        
	            break;
		}
		
		return res;
		
	}
}
