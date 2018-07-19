package com.jhta.fproj.logic;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.jhta.fproj.model.MngDAO;
import com.jhta.fproj.model.MngUserVO;

public class Maillogic {

	MngDAO dao;
	MngUserVO user;
	
	public Maillogic(MngDAO dao,MngUserVO user) {
		// TODO Auto-generated constructor stub
		this.dao=dao;
		this.user=user;
	}
	
	public String makekey() {
		
		String key="";
		
		for (int i =0; i<6; i++) {
			key+=(char)((int)(Math.random()*26)+65);
		}
		
		MngUserVO admin = dao.admin();
		
		Properties props = System.getProperties();
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "587");

		System.out.println(admin.getAemail()+"::"+ admin.getApw());
		
		Authenticator auth = new MyAuthentication(admin.getAemail(), admin.getApw());
		
		Session msession = Session.getDefaultInstance(props,auth);
		MimeMessage mmsg = new MimeMessage(msession);
		
		try {
			mmsg.setFrom(new InternetAddress(admin.getAemail()));

			System.out.println(user);
			mmsg.setRecipient(Message.RecipientType.TO, new InternetAddress(user.getAemail()));
			
			mmsg.setSubject("야하자 아이디 찾기", "UTF-8");
			mmsg.setContent("인증번호 : "+key, "text/html; charset=utf-8");
			mmsg.setHeader("content-Type", "text/html");
			
			javax.mail.Transport.send(mmsg);

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return key;
	}
	
	
}
