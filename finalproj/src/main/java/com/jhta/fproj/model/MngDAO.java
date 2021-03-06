package com.jhta.fproj.model;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;


@Component
public class MngDAO {

	@Resource
	SqlSessionTemplate sessionTemplate;
	
	public void userjoin(MngUserVO vo) {

		sessionTemplate.insert("pcmp.joinInsert",vo);
		
	}
	
	public Object chkid(MngUserVO vo) {
				
		return sessionTemplate.selectOne("pcmp.chkid",vo);
	}
	
	public MngUserVO login(MngUserVO vo) {
		
		return (MngUserVO)sessionTemplate.selectOne("pcmp.login", vo);
	}
	
	public void modify(MngUserVO vo) {

		System.out.println(vo);
		sessionTemplate.update("pcmp.modify",vo);
	}
	
	public void fdelete(MngUserVO vo) {
		
		sessionTemplate.update("pcmp.filedelete",vo);
	}
	
	public Object list() {
		
		return sessionTemplate.selectList("pcmp.list");
	}
	
	public Object memtot() {
		
		return sessionTemplate.selectOne("pcmp.memTot");
	}
	
	public MngUserVO admin() {

		return sessionTemplate.selectOne("pcmp.admin");
	}
	public MngUserVO sch(MngUserVO vo) {
		
		return sessionTemplate.selectOne("pcmp.schid", vo);
	}
	
	public MngUserVO schpw(MngUserVO vo) {
		
		return sessionTemplate.selectOne("pcmp.schpw", vo);
	}
	
	public void udelete(String uid) {

		sessionTemplate.update("pcmp.udelete",uid);
	}
}
