package com.jhta.fproj.logic;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthentication extends Authenticator{

	PasswordAuthentication pa;
	
	public MyAuthentication(String id,String pw) {
		pa = new PasswordAuthentication(id, pw);
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}
}
