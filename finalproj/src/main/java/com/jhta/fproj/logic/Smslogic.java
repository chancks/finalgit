package com.jhta.fproj.logic;

import java.util.HashMap;

import org.json.simple.JSONObject;

import com.jhta.fproj.logic.util.Coolsms;
import com.jhta.fproj.model.MngDAO;
import com.jhta.fproj.model.MngUserVO;

public class Smslogic {

	MngDAO dao;
	MngUserVO user;
	MngUserVO admin;
	
	String api_key = "NCS6YLHWP3CNNGAC";
    String api_secret = "HLZKT00ZLTSGADJ9PJFFEL3MGOWPJA0A";
    
    public Smslogic(MngDAO dao, MngUserVO user) {
		// TODO Auto-generated constructor stub
    	this.dao = dao;
    	this.user = user;
    	this.admin = dao.admin();
	}
    
    public String send() {
    	
		String key="";
		
		for (int i =0; i<6; i++) {
			key+=(char)((int)(Math.random()*26)+65);
		}
		
    	Coolsms coolsms = new Coolsms(api_key, api_secret);
    	
    	HashMap<String, String> set = new HashMap<String, String>();
    	
    	System.out.println("수신"+user.getAphone());
    	System.out.println("발신"+admin.getAphone());
    	
    	set.put("to", user.getAphone()); // 수신번호
    	set.put("from", admin.getAphone()); // 발신번호
    	
    	set.put("text", "안녕하세요 야하자입니다. 인증번호는 [" + key + "] 입니다."); // 문자내용
    	set.put("type", "sms"); // 문자 타입

    	JSONObject result = coolsms.send(set); // 보내기&전송결과받기
    	
    	if ((boolean) result.get("status") == true) {
    		// 메시지 보내기 성공 및 전송결과 출력
    		System.out.println("성공");
    		System.out.println(result.get("group_id")); // 그룹아이디
    		System.out.println(result.get("result_code")); // 결과코드
    		System.out.println(result.get("result_message")); // 결과 메시지
    		System.out.println(result.get("success_count")); // 메시지아이디
    		System.out.println(result.get("error_count")); // 여러개 보낼시 오류난 메시지 수
    		
    	} else {
    		// 메시지 보내기 실패
    		System.out.println("실패");
    		System.out.println(result.get("code")); // REST API 에러코드
    		System.out.println(result.get("message")); // 에러메시지
    		
    	}

    	return key;
    }
}
