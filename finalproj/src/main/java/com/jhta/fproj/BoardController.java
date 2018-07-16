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
import com.jhta.fproj.model.PageVO;

@Controller
@RequestMapping("board/{main}")
public class BoardController {

	@Resource
	BoardDAO dao;
	PageVO pvo;
	Object res = null;
	
	
	Paging paging = new Paging();
	
	ArrayList<BsVO> arr = new ArrayList<>();
	
	@RequestMapping()
	String boardView(@PathVariable("main") String main, Model model, HttpSession session) {
	
	//	String res = "board/"+main;
		System.out.println("boardview 占쎈쐻占쎈짗占쎌굲筌ｌ꼪�쐻占쎈짗占쎌굲~~~~~~~~~~~~~~~~~~~~~");
		
		if(main.equals("qnaInsertReg") || main.equals("qnaModifyReg")
			|| main.equals("qnaDeleteReg") || main.equals("qnaReplyReg")
			|| main.equals("noticeInsertReg") || main.equals("noticeModifyReg")
			|| main.equals("noticeDeleteReg") || main.equals("noticeReplyReg")
			){
			System.out.println("boardView:boardView if占쎈쐻占쎈짗占쎌굲~~~~~~~~~~~~~~~~~~~");
			return "board/alert";
		}
		
		System.out.println("boardView:boardView 占쎈쐻占쎈짗占쎌굲筌ｌ꼪�쐻占쎈짗占쎌굲~~~~~~~~~~~~~~~~~~~~~~");
		
		model.addAttribute("service", "board");
		System.out.println(" 占쎈쐻占쎈짗占쎌굲筌ｌ꼪�쐻占쎈짗占쎌굲~~~~~~~~~~~~~~~~~~~~~~");
		return "home";
	}
	
	@ModelAttribute("qna")
	Object qna(@PathVariable("main") String main,BoardVO vo, PageVO pvo, Model model) {

				System.out.println("qna 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈셾占쎈빍占쎈솇占쎌굲~~~~~~~~~~~~~:"+main);
	
				System.out.println(pvo);
		switch (main) {
			case "qnaList":
			//	res = dao.qnaList(vo);//�뜝�럡�� �뜝�럥�빢�뤆�룆踰∽옙六욜춯節륁삕 嶺뚮ㅄ維뽨빳占�
				
				vo.setTot((Integer)dao.qnaTotalCount());
				System.out.println("pvo.getPage : "+pvo.getPage()+" :: vo.getTot() : "+vo.getTot());
				pvo = paging.makePaging(pvo.getPage(),vo.getTot());
				vo.setStart2(pvo.getStart());
				vo.setEnd2(pvo.getEnd());
				System.out.println("占쎌넞占쎄섯"+vo);
				res = dao.qnaList(vo);
				
				System.out.println("page占쎄문占쎄쉐占쎌뜎=pvo.getPage : "+pvo.getPage()+" :: vo.getTot() : "+vo.getTot());

				model.addAttribute("data3", pvo);
				
				break;
			case "qnaDetail":
				System.out.println("detail : "+vo);
				res = dao.qnaDetail(vo);
				break;
			case "qnaInsertReg":
				System.out.println("占쎈쐻占쎈뼢占쎈닰占쎌굲占쎈뱜"+vo);
				res = dao.qnaInsert(vo);
				System.out.println("占쎈쐻占쎈뼢占쎈닰占쎌굲占쎈뱜2222222222222"+vo);
				model.addAttribute("msg", "작성되었습니다.");
				model.addAttribute("url", "qnaDetail?id="+vo.getId());
		/*		if(dao.qnaInsert(vo)==null) {
					model.addAttribute("msg", "빈칸을 작성해 주세요");
					model.addAttribute("url","qnaInsertForm");
				}*/
				break;
			case "qnaReply":
				res = dao.qnaReply(vo);
				break;	
			case "qnaReplyReg":
				System.out.println("占쎈쐻占쎈짗占쎌굲占쎈뱜占쎈쐻占쎈뼩筌뚭쑴�굲 vo 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲?"+vo);
				res = dao.qnaReplyReg(vo);
				System.out.println("占쎈쐻占쎈짗占쎌굲占쎈뱜占쎈쐻占쎈뼩筌뚭쑴�굲 vo "+vo);
				model.addAttribute("msg", "작성되었습니다.");
				model.addAttribute("url", "qnaList");
				break;
			case "qnaModify":
				res = dao.qnaModify(vo);
				break;
			case "qnaModifyReg":
				res = dao.qnaPwChk(vo);
				if(dao.qnaPwChk(vo)!=null) {
	                res = dao.qnaModifyReg(vo);
	                model.addAttribute("msg", "수정되었습니다.");
	                model.addAttribute("url", "qnaDetail?id="+vo.getId());
	            }else if(dao.qnaPwChk(vo)==null){
	            	model.addAttribute("msg", "비밀번호를 작성해 주세요");
	                model.addAttribute("url", "qnaModify?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해 주세요");
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
				System.out.println("qnaDeleteReg 占쎈쐻占쎈짗占쎌굲筌ｌ꼪�쐻占쎈짗占쎌굲 : "+ res);
	            if(dao.qnaPwChk(vo)!=null) {
	            	//BoardVO vo1 = (BoardVO) dao.qnaPwChk(vo);
	            	res = dao.qnaDelete(vo);
	            	System.out.println("if占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲筌ｌ꼪�쐻占쎈짗占쎌굲 : "+res);
	                res = dao.qnaDeleteReg((BoardVO) res);
	                System.out.println("if占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲筌ｌ꼪�쐻占쎈짗占쎌굲 : "+dao.qnaPwChk(vo));
	                model.addAttribute("msg", "삭제되었습니다.");
	                model.addAttribute("url", "qnaList");
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해 주세요");
	                model.addAttribute("url", "qnaDelete?id="+vo.getId());
	            }        
	            System.out.println("if占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲筌ｌ꼪�쐻占쎈짗占쎌굲 : "+dao.qnaPwChk(vo));
	            break;
		}
	    		
	 	return res;
	}
         
    @ModelAttribute("notice")
	Object notice(@PathVariable("main") String main, BoardVO vo, PageVO pvo, Model model) {
				
				System.out.println("notice 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈셾占쎈빍占쎈솇占쎌굲~~~~~~~~~~~~~:"+main);
				
			switch (main) {
			case "noticeList":
				vo.setTot((Integer)dao.noticeTotalCount());
				System.out.println("pvo.getPage : "+pvo.getPage()+" :: vo.getTot() : "+vo.getTot());
				pvo = paging.makePaging(pvo.getPage(),vo.getTot());
				vo.setStart2(pvo.getStart());
				vo.setEnd2(pvo.getEnd());
				System.out.println("占쎌넞占쎄섯"+vo);
				res = dao.noticeList(vo);
				System.out.println("page占쎄문占쎄쉐占쎌뜎=pvo.getPage : "+pvo.getPage()+" :: vo.getTot() : "+vo.getTot());

				model.addAttribute("data3", pvo);
				break;
			case "noticeDetail":
				System.out.println("detail : "+vo);
				res = dao.noticeDetail(vo);
				
				break;
			case "noticeInsertReg":
				System.out.println("占쎈쐻占쎈뼢占쎈닰占쎌굲占쎈뱜"+vo);
				res = dao.noticeInsert(vo);
				System.out.println("占쎈쐻占쎈뼢占쎈닰占쎌굲占쎈뱜2222222222222"+vo);
				model.addAttribute("msg", "작성되었습니다.");
				model.addAttribute("url", "noticeDetail?id="+vo.getId());
				break;
			case "noticeModify":
				res = dao.noticeModify(vo);
				break;
			case "noticeModifyReg":
				res = dao.noticePwChk(vo);
				if(dao.noticePwChk(vo)!=null) {
	                res = dao.noticeModifyReg(vo);
	                model.addAttribute("msg", "수정되었습니다.");
	                model.addAttribute("url", "noticeDetail?id="+vo.getId());
	            }else if(dao.noticePwChk(vo)==null){
	            	model.addAttribute("msg", "비밀번호를 작성해 주세요");
	                model.addAttribute("url", "noticeModify?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해 주세요");
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
	                model.addAttribute("msg", "삭제되었습니다.");
	                model.addAttribute("url", "noticeList");
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해주세요");
	                model.addAttribute("url", "noticeDelete?id="+vo.getId());
	            }        
	            break;
		}
		
		return res;
		
	}
	    
	    
	@ModelAttribute("review")
	Object review(@PathVariable("main") String main, BoardVO vo, PageVO pvo, Model model) {
				
				System.out.println("review 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈셾占쎈빍占쎈솇占쎌굲~~~~~~~~~~~~~:"+main);
				
			switch (main) {
			case "reviewList":
				vo.setTot((Integer)dao.reviewTotalCount());
				System.out.println("pvo.getPage : "+pvo.getPage()+" :: vo.getTot() : "+vo.getTot());
				pvo = paging.makePaging(pvo.getPage(),vo.getTot());
				vo.setStart2(pvo.getStart());
				vo.setEnd2(pvo.getEnd());
				System.out.println("占쎌넞占쎄섯"+vo);
				res = dao.reviewList(vo);
		//		System.out.println("page占쎄문占쎄쉐占쎌뜎=pvo.getPage : "+pvo.getPage()+" :: vo.getTot() : "+vo.getTot());
	
				model.addAttribute("data3", pvo);
				break;
			case "reviewDetail":
				System.out.println("detail : "+vo);
				res = dao.reviewDetail(vo);
				
				break;
			case "reviewInsertReg":
		//		System.out.println("占쎈쐻占쎈뼢占쎈닰占쎌굲占쎈뱜"+vo);
				res = dao.reviewInsert(vo);
		//		System.out.println("占쎈쐻占쎈뼢占쎈닰占쎌굲占쎈뱜2222222222222"+vo);
				model.addAttribute("msg", "작성되었습니다.");
				model.addAttribute("url", "reviewDetail?id="+vo.getId());
				break;
			case "reviewModify":
				res = dao.reviewModify(vo);
				break;
			case "reviewModifyReg":
				res = dao.reviewPwChk(vo);
				if(dao.reviewPwChk(vo)!=null) {
	                res = dao.reviewModifyReg(vo);
	                model.addAttribute("msg", "수정되었습니다.");
	                model.addAttribute("url", "reviewDetail?id="+vo.getId());
	            }else if(dao.reviewPwChk(vo)==null){
	            	model.addAttribute("msg", "비밀번호를 작성해주세요");
	                model.addAttribute("url", "reviewModify?id="+vo.getId());
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해주세요");
	                model.addAttribute("url", "reviewModify?id="+vo.getId());
	            }
	            break;
			case "reviewDelete":
				res = dao.reviewDelete(vo);
				System.out.println("reviewDelete : "+ res);
				break;
			case "reviewDeleteReg":
				res = dao.reviewPwChk(vo);
	            if(dao.reviewPwChk(vo)!=null) {
	            	res = dao.reviewDelete(vo);
	                res = dao.reviewDeleteReg((BoardVO) res);
	                model.addAttribute("msg", "삭제되었습니다.");
	                model.addAttribute("url", "reviewList");
	            }else {
	            	model.addAttribute("msg", "비밀번호를 확인해주세요");
	                model.addAttribute("url", "reviewDelete?id="+vo.getId());
	            }        
	            break;
		}
		
		return res;
		
	}
}
