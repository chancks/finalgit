package com.jhta.fproj.logic;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.jhta.fproj.model.MngUserVO;

public class Schval implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		
		MngUserVO dto = (MngUserVO)target;
		
		Pattern p = Pattern.compile("[가-힣]{2,5}$");
	    Matcher m =p.matcher(dto.getAname());
	    
		if(dto.getAname() == null || dto.getAname().trim().equals("")||!m.matches()) {
			errors.rejectValue("aname", "invalid.aname","이름을 확인해주세요");
		}
		
		if(dto.getAphone()==null) {
			p = Pattern.compile("[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$");
		    m =p.matcher(dto.getAemail());
		    
			if(dto.getAemail() == null || dto.getAemail().trim().equals("")||!m.matches()) {
				errors.rejectValue("aemail", "invalid.aeamil","이메일을 확인해주세요");
			}
		}
		//===============================================
		
		
		
		if(dto.getAphone()!=null) {
			
			p = Pattern.compile("[a-z0-9]{6,12}$");
		    m =p.matcher(dto.getAid());
		    
			if(dto.getAid() == null||dto.getAid().trim().equals("")||!m.matches()) {
				errors.rejectValue("aid", "invalid.aid","아이디를 확인해주세요");
			}	
			
			if(dto.getAbirth() == null||dto.getAbirth().trim().equals("")) {
				errors.rejectValue("abirth", "invalid.abirth","생년월일을 확인해주세요");
			}
			
			p = Pattern.compile("[0-9]{10,11}$");
		    m =p.matcher(dto.getAphone());
		    
			if(dto.getPhone()[1].trim().equals("")||dto.getPhone()[2].trim().equals("")||!m.matches()) {
				errors.rejectValue("aphone", "invalid.aphone","번호를 확인해주세요");
			}
		}
		
	}

	
}
