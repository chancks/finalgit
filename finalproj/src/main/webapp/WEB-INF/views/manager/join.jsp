<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String strdate = sdf.format(date);
%>   
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
		
	function idchk() {
		var frm = document.frm;
		var id = document.getElementById('id');
		
		if(!/^[a-z0-9]{6,12}$/.test(id.value)){
		
			alert("id를 영문과 숫자를 조합해서 입력하세요 6~12자");
			id.focus();
			return;
		} 
		
		frm.action="/mvc/manager/idchk";
		frm.submit();
	}
	
	function join(){
		var frm = document.frm;
		var id = document.getElementById('id');
		var id2 = '${user.aid}';
		var pw = frm.apw;
		var pw2 = frm.apw2;
		var name = frm.aname;
		var mail = frm.aemail;
		var phone = frm.phone;
		var aphone = phone[0].value+phone[1].value+phone[2].value;
		var birth = frm.abirth;
		
/* 		if(id.value!=id2){
			alert("아이디를 확인해주세요");
			id.value = id2;
			id.focus();
			return;
		}
		
	 	else if(pw.value=='' || !/^[a-z0-9]{6,12}$/.test(pw.value)){
			alert("패스워드는 6~12자로 입력하세요");
			pw.value='';
			pw2.value='';
			pw.focus();
			return;
		}
		
		else if(pw.value != pw2.value){
			alert("패스워드가 일치하지 않습니다");
			pw.value='';
			pw2.value='';
			pw.focus();
			return;
		}
		
		else if(name.value=='' || !/^[가-힣]{2,5}$/.test(name.value)){
			alert('이름을 정확히 입력해주세요 2~5자');
			name.value='';
			name.focus();
			return;
		}  
		
		else if(mail.value=='' || !/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i.test(mail.value)){
			alert('e-mail을 정확히 입력하세요');
			mail.value='';
			mail.focus();
			return;
		}
		
		else if(!/^[0-9]{10,11}$/.test(aphone)){
			alert('전화번호를 정확히 입력해주세요');
			return;
		}
		
		if(birth.value==''){
			alert('생년월일을 입력해주세요');
			return;
		} */
		
		frm.submit();
	}

</script>


<div id="legend">
	<legend> ${param.jgrade eq null ? user.agrade:param.jgrade} 등록</legend>
</div>

<c:choose>
	<c:when test="${!idchk&&idchk!=null&&idchk!='' }">
		<script>
			alert('아이디 중복');
		</script>
	</c:when>
	
	<c:when test="${idchk&&idchk!=null&&idchk!='' }">
		<script>
		alert('아이디 사용가능');
		</script>
	</c:when>

</c:choose>


<form action="joinreg" method="post" name="frm">
	<table class="table">
		<tr>
			<td style="background-color:#D8D8D8;width:100px">id</td>
			<td colspan="3">
			<input type="text" name="aid" value="${user.aid }" id="id">
			
			<c:choose>
				<c:when test="${param.jgrade==null }">
					<input type="hidden" name="agrade" value="${user.agrade }">
				</c:when>
				<c:otherwise>
					<input type="hidden" name="agrade" value="${param.jgrade }">
				</c:otherwise>
			</c:choose>
			
			
			<input type="button" onclick="idchk()" value="중복체크">
			</td>
			
		</tr>
		<tr>
			<td style="background-color:#D8D8D8;width:100px ">패스워드</td>
			<td><input type="password" name="apw" id="pw"></td>
			
				<td style="background-color:#D8D8D8;width:150px ">패스워드 확인</td>
			<td><input type="password" name="apw2" id="pw2"></td>
			
		</tr>
		<tr>

		</tr>
		<tr>
			<td style="background-color:#D8D8D8;width:100px ">이름</td>
			<td><input type="text" name="aname" value="${user.aname }"></td>
			
			<td style="background-color:#D8D8D8;">이메일</td>
			<td><input type="text" name="aemail" value="${user.aemail }"></td>
		</tr>

		<tr>
			<td style="background-color:#D8D8D8;width:100px ">핸드폰</td>
			<td>
			<input type="text" name="phone" value="010" maxlength="3" size="3" style="width:56px;">
			-
			<input type="text" name="phone" maxlength="4" size="4" value="${user.phone[1] }" style="width:56px;">
			-
			<input type="text" name="phone" maxlength="4" size="4" value="${user.phone[2] }" style="width:56px;">
			</td>
			
			<td style="background-color:#D8D8D8; ">생일</td>
			<td><input type="date" name="abirth" value=${user.abirth } max=<%=strdate %> style="width:200px; height:26px" ></td>
		</tr>

		<tr>
			<td style="background-color:#D8D8D8;width:100px ">자기소개</td>
			<td colspan="3"><textarea  name="ainfo" style="resize: none;" rows="10" cols="80px">${user.ainfo }</textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<c:choose>
					<c:when test="${idchk}">
						<input type="button" onclick="join()" value="가입">
					</c:when>
					<c:otherwise>
						<input type="button" value="가입" disabled="disabled">
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
	
	</table>
</form>

