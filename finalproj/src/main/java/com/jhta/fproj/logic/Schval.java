package com.jhta.fproj.logic;

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
		
		if(dto.getAname() == null || dto.getAname().trim().equals("")) {
			errors.rejectValue("aname", "invalid.aname","이름을 입력하세요");
		}
			
	}

	
}
