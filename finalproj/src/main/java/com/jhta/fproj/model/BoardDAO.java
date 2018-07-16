package com.jhta.fproj.model;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;

@Component
public class BoardDAO {

	@Resource
	SqlSessionTemplate sessionTemplate;
	
	//qna
	
	public Object qnaList(BoardVO vo) {
		System.out.println(vo);
		return sessionTemplate.selectList("kdh.qnaListSch", vo);
	}
	
	public Object qnaDetail(BoardVO vo) {
		// TODO Auto-generated method stub
			   sessionTemplate.update("kdh.qnaReadCnt", vo);
		return sessionTemplate.selectOne("kdh.qnaDetail", vo);
	}
	
	public Object qnaInsert(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.insert("kdh.qnaInsert", vo);
	}

	public Object qnaPwChk(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.qnaPwChk", vo);
	}
	
	public Object qnaModify(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.qnaModify", vo);
	}

	public Object qnaModifyReg(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.update("kdh.qnaModifyReg", vo);
	}
	
	public Object qnaDelete(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.qnaDelete", vo);
	}

	public Object qnaDeleteReg(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.delete("kdh.qnaDeleteReg", vo);
	}

	public Object qnaReply(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.qnaReply", vo);
	}

	public Object qnaReplyReg(BoardVO vo) {
		// TODO Auto-generated method stub
		System.out.println(vo);
		return sessionTemplate.update("kdh.qnaReplyReg", vo);
	}

	public Object qnaTotalCount() {
		// TODO Auto-generated method stub
		System.out.println("...............................");
		return sessionTemplate.selectOne("kdh.qnaTotalCount");
	}
	
	
	//notice
	
	public Object noticeList(BoardVO vo) {
		return sessionTemplate.selectList("kdh.noticeListSch", vo);
	}
	
	public Object noticeDetail(BoardVO vo) {
		// TODO Auto-generated method stub
			   sessionTemplate.update("kdh.noticeReadCnt", vo);
		return sessionTemplate.selectOne("kdh.noticeDetail", vo);
	}
	
	public Object noticeInsert(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.insert("kdh.noticeInsert", vo);
	}

	public Object noticePwChk(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.noticePwChk", vo);
	}
	
	public Object noticeModify(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.noticeModify", vo);
	}

	public Object noticeModifyReg(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.update("kdh.noticeModifyReg", vo);
	}
	
	public Object noticeDelete(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.noticeDelete", vo);
	}

	public Object noticeDeleteReg(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.noticeDeleteReg", vo);
	}

	public Object noticeTotalCount() {
		// TODO Auto-generated method stub
		System.out.println("...............................");
		return sessionTemplate.selectOne("kdh.noticeTotalCount");
	}

	//review
	
	public Object reviewList(BoardVO vo) {
		return sessionTemplate.selectList("kdh.reviewListSch", vo);
	}
	
	public Object reviewDetail(BoardVO vo) {
		// TODO Auto-generated method stub
			   sessionTemplate.update("kdh.reviewReadCnt", vo);
		return sessionTemplate.selectOne("kdh.reviewDetail", vo);
	}
	
	public Object reviewInsert(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.insert("kdh.reviewInsert", vo);
	}

	public Object reviewPwChk(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.reviewPwChk", vo);
	}
	
	public Object reviewModify(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.reviewModify", vo);
	}

	public Object reviewModifyReg(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.update("kdh.reviewModifyReg", vo);
	}
	
	public Object reviewDelete(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.reviewDelete", vo);
	}

	public Object reviewDeleteReg(BoardVO vo) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("kdh.reviewDeleteReg", vo);
	}

	public Object reviewTotalCount() {
		// TODO Auto-generated method stub
		System.out.println("...............................");
		return sessionTemplate.selectOne("kdh.reviewTotalCount");
	}

}
