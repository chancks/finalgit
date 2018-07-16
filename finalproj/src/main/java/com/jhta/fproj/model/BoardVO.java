package com.jhta.fproj.model;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("boardVo") // 蹂꾩묶�쓣 留뚮뱺�떎.
public class BoardVO {
	 Integer id, gid, seq , lev ,cnt, count, start, end, page;
	 Date reg_date;
	 String   pname, pw, title, content, schCol;
	
	 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	 
	 ArrayList<BoardVO> arr;
	 
	 public BoardVO() {
		// TODO Auto-generated constructor stub
	}
	 
	 
	public BoardVO(String pname, String pw, String title, String content) {
		super();
		this.pname = pname;
		this.pw = pw;
		this.title = title;
		this.content = content;
	}


	public ArrayList<BoardVO> getArr() {
		return arr;
	}
	public void setArr(ArrayList<BoardVO> arr) {
		this.arr = arr;
	}
	public String getSchCol() {
		return schCol;
	}
	public void setSchCol(String schCol) {
		this.schCol = schCol;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public Integer getLev() {
		return lev;
	}
	public void setLev(Integer lev) {
		this.lev = lev;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public String getReg_date() {
		
		String date = sdf.format(reg_date);
		
		return date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}


	public Integer getStart() {
		return start;
	}


	public void setStart(Integer start) {
		this.start = start;
	}


	public Integer getEnd() {
		return end;
	}


	public void setEnd(Integer end) {
		this.end = end;
	}


	public Integer getPage() {
		return page;
	}


	public void setPage(Integer page) {
		this.page = page;
	}


	@Override
	public String toString() {
		return "BoardVO [id=" + id + ", gid=" + gid + ", seq=" + seq + ", lev=" + lev + ", cnt=" + cnt + ", count="
				+ count + ", reg_date=" + reg_date + ", pname=" + pname + ", pw=" + pw + ", title=" + title
				+ ", content=" + content + ", schCol=" + schCol + ", sdf=" + sdf + ", arr=" + arr + "]";
	}
}
	 