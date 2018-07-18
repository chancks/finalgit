<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<script type="text/javascript">

function auth() {  //이름 이메일 인증되면 모달창

	var mymodal = document.getElementById('modal');
	console.log(mymodal);
	mymodal.style.display = 'inline'; 
}
  
function clo(){	//모달창 닫기
	var mymodal = document.getElementById('modal');
	var ikey = document.getElementById('keytext').value;
	var ikey2 = '${key}';
	
	mymodal.style.display = 'none';
	if(ikey.toUpperCase()==ikey2){
		location.href='loginf';
	}
}

function che() { //인증번호 비교
	var text = document.getElementById('tt');
	var ikey = document.getElementById('keytext').value;
	
	var ikey2 = '${key}';
	
	if(ikey.toUpperCase()==ikey2){
		text.innerHTML='${user.aid} 입니다.';
	}
	 
	
}
</script>

<style>

#modal {display:none;background-color:#FFFFFF;position:absolute;top:30px;left:200px;padding:10px;
		border:2px solid #E2E2E2;z-Index:9999}
</style>

<div id="modal">
    <h3>이메일 인증</h3>
    <p id="tt">인증번호를 입력하세요 </p>
    <input type="text" id = keytext>
    <input type="button" onclick="che()" value="확인">
    <input type="button" onclick="clo()" value="닫기">
  
</div>

<c:if test="${auth }">
	<script>
		auth();
	</script>
</c:if>
<form action="schidreg">	
	<table>
		<tr>
			<td colspan="2">ID찾기</td>
		<tr>
		<tr>
			<td>
				이름
			</td>
			<td>
				<input type="text" name ="aname" value="${user.aname }">
				<form:errors path="mngUserVO.aname"/>
			</td>
		</tr>
		<tr>
			<td>
				이메일
			</td>
			<td>
				<input type="text" name="aemail" value="${user.aemail }">
				<form:errors path="mngUserVO.aemail"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="찾기">
				<form:errors path="mngUserVO.ainfo"/>
			</td>
		</tr>
	</table>
	
</form>



