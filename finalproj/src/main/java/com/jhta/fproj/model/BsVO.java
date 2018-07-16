package com.jhta.fproj.model;

import java.util.Arrays;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("bsVo")
public class BsVO {

	String ccode,ctitle, cname, ccontent, ctime,cpid,rid, rtitle, rname,rcode,rpay;
	Integer cday,ctotal,cpnum,cpprice,tot;
	Date cstart, cfinish,cpdate;
    
    String [] dayarr = {"월","화","수","목","금","토","일"};
    Integer [] timearr;
    
	public Integer getTot() {
		return tot;
	}
	public void setTot(Integer tot) {
		this.tot = tot;
	}
	public String getRpay() {
		return rpay;
	}
	public void setRpay(String rpay) {
		this.rpay = rpay;
	}
	public Integer getCpnum() {
		return cpnum;
	}
	public void setCpnum(Integer cpnum) {
		this.cpnum = cpnum;
	}
	public String getCpid() {
		return cpid;
	}
	public void setCpid(String cpid) {
		this.cpid = cpid;
	}
	public Integer getCpprice() {
		return cpprice;
	}
	public void setCpprice(Integer cpprice) {
		this.cpprice = cpprice;
	}
	public Date getCpdate() {
		return cpdate;
	}
	public void setCpdate(Date cpdate) {
		this.cpdate = cpdate;
	}
	public String getRcode() {
		return rcode;
	}
	public void setRcode(String rcode) {
		this.rcode = rcode;
	}
	public Integer getCtotal() {
		return ctotal;
	}
	public void setCtotal(Integer ctotal) {
		this.ctotal = ctotal;
	}
	public String getCcode() {
		return ccode;
	}
	public void setCcode(String ccode) {
		this.ccode = ccode;
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
	public Integer getCday() {
		return cday;
	}
	public void setCday(Integer cday) {
		this.cday = cday;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		
		String [] str = ctime.split(",");
		timearr = new Integer [str.length];

		for(int i=0; i<str.length;i++) {
			timearr[i] = Integer.parseInt(str[i]);
		} 
		
		this.ctime = ctime;
	}
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
	public Integer[] getTimearr() {
		return timearr;
	}
	public void setTimearr(Integer[] timearr) {
		this.timearr = timearr;
	}
	public String[] getDayarr() {
		return dayarr;
	}
	@Override
	public String toString() {
		return "BsVO [ccode=" + ccode + ", ctitle=" + ctitle + ", cname=" + cname + ", ccontent=" + ccontent + ", cday="
				+ cday + ", ctime=" + ctime + ", timearr=" + Arrays.toString(timearr) + ", ctotal=" + ctotal + ", tot="
				+ tot + ", rid=" + rid + ", rtitle=" + rtitle + ", rname=" + rname + ", rcode=" + rcode + ", rpay="
				+ rpay + ", cpid=" + cpid + ", cpnum=" + cpnum + ", cpprice=" + cpprice + ", cpdate=" + cpdate
				+ ", cstart=" + cstart + ", cfinish=" + cfinish + "]";
	}
}
