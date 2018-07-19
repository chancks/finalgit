package com.jhta.fproj.logic;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.jhta.fproj.model.BsDAO;
import com.jhta.fproj.model.MngUserVO;

public class ConPayMail {
	
	BsDAO dao;
	MngUserVO vo;
	
	public ConPayMail(BsDAO dao, MngUserVO vo) {
		super();
		this.dao = dao;
		this.vo = vo;
	}
	
	public String makemessage(String str) {
	
	MngUserVO sch = new MngUserVO() ;
	MngUserVO admin = new MngUserVO();
	
	String key="";
	
	
	admin = (MngUserVO)dao.admininfo();//관리자 정보 
	sch = (MngUserVO)dao.myinfo(str);
	
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

		System.out.println(sch);
		mmsg.setRecipient(Message.RecipientType.TO, new InternetAddress(sch.getAemail()));
		
		mmsg.setSubject("야하자 결제 완료", "UTF-8");
		mmsg.setContent("결제가 완료되었습니다 확인부탁드립니다.", "text/html; charset=utf-8");
		mmsg.setHeader("content-Type", "text/html");
		
		javax.mail.Transport.send(mmsg);

	} catch (Exception e) {
		// TODO: handle exception
		System.out.println(e);
	}
	
	return key;
}

}
