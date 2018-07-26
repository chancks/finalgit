package com.jhta.fproj.model;

import java.util.Arrays;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("uservo")
public class MngUserVO {

	String aid,apw,aname,aemail,
	aphone,abirth,ainfo,aupfile,agrade,apw2;

	MultipartFile up1;
	String [] phone;

	public String[] getPhone() {
		return phone;
	}

	public MultipartFile getUp1() {
		return up1;
	}

	public void setUp1(MultipartFile up1) {
		this.up1 = up1;
	}

	public void setPhone(String[] phone) {
		
		aphone = phone[0]+phone[1]+phone[2];
		
		this.phone = phone;
	}

	public String getApw2() {
		return apw2;
	}

	public void setApw2(String apw2) {
		this.apw2 = apw2;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getApw() {
		return apw;
	}

	public void setApw(String apw) {
		this.apw = apw;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getAemail() {
		return aemail;
	}

	public void setAemail(String aemail) {
		this.aemail = aemail;
	}

	public String getAphone() {
		return aphone;
	}

	public void setAphone(String aphone) {
		
		this.aphone = aphone;
	}

	public String getAbirth() {
		return abirth;
	}

	public void setAbirth(String abirth) {
		this.abirth = abirth;
	}

	public String getAinfo() {
		return ainfo;
	}

	public void setAinfo(String ainfo) {
		this.ainfo = ainfo;
	}

	public String getAupfile() {
		return aupfile;
	}

	public void setAupfile(String aupfile) {
		this.aupfile = aupfile;
	}

	public String getAgrade() {
		return agrade;
	}

	public void setAgrade(String agrade) {
		this.agrade = agrade;
	}

	@Override
	public String toString() {
		return "MngUserVO [aid=" + aid + ", apw=" + apw + ", aname=" + aname + ", aemail=" + aemail + ", aphone="
				+ aphone + ", abirth=" + abirth + ", ainfo=" + ainfo + ", aupfile=" + aupfile + ", agrade=" + agrade
				+ ", apw2=" + apw2 + ", up1=" + up1 + ", phone=" + Arrays.toString(phone) + "]";
	}

	
	
}
