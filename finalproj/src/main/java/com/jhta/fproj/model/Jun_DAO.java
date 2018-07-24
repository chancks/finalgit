package com.jhta.fproj.model;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;

@Component
public class Jun_DAO {

	@Resource
	SqlSessionTemplate sessionTemplate;
	
	public Object course_list(Jun_VO vo) {
			
		System.out.println("DAO course_list 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.course_list",vo);
	
	}
	
	
	public Object course_insert(Jun_VO vo) {

		System.out.println("DAO course_insert 들어옴:  "+vo);

		return sessionTemplate.insert("seo_mm.course_Insert", vo);
		
	}
	
	public Object course_detail(Jun_VO vo) {

		System.out.println("DAO course_detail 들어옴:  "+vo);
		/*vo.getCcontent().replaceAll("\n", "<br>");*/
		return sessionTemplate.selectList("seo_mm.course_detail", vo);
		
	}
	
	public Object course_modify(Jun_VO vo) {
		
		System.out.println("DAO course_modify 들어옴:  "+vo);
		/*vo.getCcontent().replaceAll("<br>", "\n");*/
		return sessionTemplate.selectOne("seo_mm.course_modify", vo);
	}
	
	public Object course_modify1(Jun_VO vo) {
		
		System.out.println("DAO course_modify1 들어옴:  "+vo);
		/*vo.getCcontent().replaceAll("<br>", "\n");*/
		return sessionTemplate.selectList("seo_mm.course_modify1", vo);
	}
	
	public Object course_modifyReg(Jun_VO vo) {
		
		System.out.println("DAO course_modify 들어옴:  "+vo);

		return sessionTemplate.update("seo_mm.course_modifyReg", vo);
	}
	
	public Object course_delete(Jun_VO vo) {
		
		System.out.println("DAO course_delete 들어옴:  "+vo);

		return sessionTemplate.delete("seo_mm.course_deleteReg", vo);
	}
	
	
	
	
	
	
	public Object astudent_list(Jun_VO vo) {
		
		System.out.println("DAO astudent_list 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.astudent_list",vo);
	
	}
	
	public Object astudent_course_list(Jun_VO vo) {
		
		System.out.println("DAO astudent_course_list 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.astudent_course_list",vo);
	
	}
	


	public Object professor_list(Jun_VO vo) {
		
		System.out.println("DAO aprofessor_list 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.professor_list",vo);
	
	}
	
	public Object professor_course_list(Jun_VO vo) {
		
		System.out.println("DAO professor_course_list 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.professor_course_list",vo);
	
	}
	
	
	
	public Object p_course_list(Jun_VO vo) {
		
		System.out.println("DAO p_course_list 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.p_course_list",vo);
	
	}
	
	public Object p_course_list1(Jun_VO vo) {
		
		System.out.println("DAO p_course_list1 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.p_course_list1",vo);
	
	}
	public Object p_course_list2(Jun_VO vo) {
		
		System.out.println("DAO p_course_list2 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.p_course_list2",vo);
	
	}
	public Object p_course_list3(Jun_VO vo) {
		
		System.out.println("DAO p_course_list3 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.p_course_list3",vo);
	
	}
	
	public Object plist(Jun_VO vo) {
		
		System.out.println("DAO plist 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.plist",vo);
	
	}
	
	
	public Object clist(Jun_VO vo) {
		
		System.out.println("DAO clist 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.clist",vo);
	
	}
	


	public Object p_astudent_list(Jun_VO vo) {
		
		System.out.println("DAO p_astudent_list 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.p_astudent_list",vo);
	
	}
	
	public Object course_list1(Jun_VO vo) {
			
		System.out.println("DAO course_list1 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.course_list1",vo);
	
	}
	
	public Object course_list2(Jun_VO vo) {
		
		System.out.println("DAO course_list2 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.course_list2",vo);
	
	}
	
	
	public Object course_list3(Jun_VO vo) {
		
		System.out.println("DAO course_list3 들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.course_list3",vo);
	
	}
	
	public Object course_list4(Jun_VO vo) {
		
		System.out.println("DAO course_list4들어옴:  "+vo);
		
		return sessionTemplate.selectList("seo_mm.course_list",vo);
	
	}
	
	
}
