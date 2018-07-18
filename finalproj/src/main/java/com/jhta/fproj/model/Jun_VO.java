package com.jhta.fproj.model;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("jun_Vo")
public class Jun_VO {
	 
	 Date cstart, cfinish;
	 String ctitle,cday,cname, ccontent,ctime,ccode, cid, schCol, col, aid, apw, aname, aemail, aphone, abirth, ainfo, aupfile, agrade, rid, rtitle, rname, rpay, rcode;
	 public String getCol() {
		return col;
	}
	public void setCol(String col) {
		this.col = col;
	}
	public String getRcode() {
		return rcode;
	}
	public void setRcode(String rcode) {
		this.rcode = rcode;
	}
	Integer ctotal;

	 
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRtitle() {
		return rtitle;
	}
	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRpay() {
		return rpay;
	}
	public void setRapy(String rpay) {
		this.rpay = rpay;
	}
	public Date getCstart() {
		return cstart;
	}
	public void setCstart(Date cstart) {
		this.cstart = cstart;
	}
	public Date getCfinish() {
		return cfinish;
	}
	public void setCfinish(Date cfinish) {
		this.cfinish = cfinish;
	}
	public String getCtitle() {
		return ctitle;
	}
	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCcontent() {
		return ccontent;
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public String getCcode() {
		return ccode;
	}
	public void setCcode(String ccode) {
		this.ccode = ccode;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getSchCol() {
		return schCol;
	}
	public void setSchCol(String schCol) {
		this.schCol = schCol;
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
	public String getCday() {
		return cday;
	}
	public void setCday(String cday) {
		this.cday = cday;
	}
	public Integer getCtotal() {
		return ctotal;
	}
	public void setCtotal(Integer ctotal) {
		this.ctotal = ctotal;
	}
	@Override
	public String toString() {
		return "Jun_VO [cstart=" + cstart + ", cfinish=" + cfinish + ", ctitle=" + ctitle + ", cname=" + cname
				+ ", ccontent=" + ccontent + ", ctime=" + ctime + ", ccode=" + ccode + ", cid=" + cid + ", schCol="
				+ schCol + ", col=" + col + ", aid=" + aid + ", apw=" + apw + ", aname=" + aname + ", aemail=" + aemail
				+ ", aphone=" + aphone + ", abirth=" + abirth + ", ainfo=" + ainfo + ", aupfile=" + aupfile
				+ ", agrade=" + agrade + ", rid=" + rid + ", rtitle=" + rtitle + ", rname=" + rname + ", rpay=" + rpay
				+ ", rcode=" + rcode + ", cday=" + cday + ", ctotal=" + ctotal + "]";
	}
	
	
	
	
	 
}
