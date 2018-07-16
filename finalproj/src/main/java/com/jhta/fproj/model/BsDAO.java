package com.jhta.fproj.model;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;

@Component
public class BsDAO {

	@Resource
	SqlSessionTemplate sessionTemplate;
	
	public Object list(BsVO vo) {//시간표
		
		return sessionTemplate.selectList("bsm.bsList",vo);
		
	}
	
	public Object reglisttot() {//수강신청 가능 갯수
		
		return sessionTemplate.selectOne("bsm.bsRegListTot");
	}
	
	public Object reglistpaging(PageVO vo) {//수강신청가능(페이징)
		System.out.println("DAO:"+vo);
		return sessionTemplate.selectList("bsm.bsRegListPaging",vo);
	}
	
	public Object mylist(BsVO vo) {//내 수강신청
		
		return sessionTemplate.selectList("bsm.bsMyList",vo);
	}
	
	public Object tot(BsVO vo) {//과목별 수강신청 인원
		
		 return sessionTemplate.selectOne("bsm.bsTotRegist",vo);
	}
	
	public Object infosub(BsVO vo) {//수강신청하려는 과목정보
		
		return sessionTemplate.selectList("bsm.bsInfoSub", vo);
	}
	
	public Object insertregist(BsVO vo) {//내 수강신청 목록에 추가
		
		return sessionTemplate.insert("bsm.bsInsertRegist",vo);
	}
	
	public Object deleteregist(BsVO vo) {//내 수강신청 목록에서 삭제
		
		return sessionTemplate.delete("bsm.bsDeleteRegist",vo);
	}
	
	public Object insertpayment(BsVO vo) {//결제 목록에 추가
		
		return sessionTemplate.insert("bsm.bsInsertPayment",vo);
	}
	
	public Object chkpayment(BsVO vo) {//결제로 변경
		
		return sessionTemplate.update("bsm.bsChkPayment", vo);
	}
	
	public Object tot() {//수강신청 미결제 인원
		
		 return sessionTemplate.selectOne("bsm.bsTotNoPay");
	}
	
	public Object rlist() {//수강신청목록
		
		return sessionTemplate.selectList("bsm.bsRegistList");
	}
	
}
