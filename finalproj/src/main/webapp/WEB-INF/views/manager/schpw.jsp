<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<% Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String strdate = sdf.format(date);
%>       
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 , user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="../resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap/css/bootstrap-theme.min.css">



<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/3.3.0/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="../resources/bootstrap/js/bootstrap.min.js"></script>


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
		text.innerHTML='${user.apw} 입니다.';
	}
	
	else{
		alert('인증번호를 확인해주세요');
	}
	 
	
}
</script>

<style>
@media screen and (min-width:380px) {
	.row {
		margin-left: 260px;
	
		height: 400px;

	}
	#modal {
		display: none;
		background-color: #FFB2F5;
		position: absolute;
		top: 180px;
		left: 360px;
		padding: 10px;
		border: 3px solid #E2E2E2;
		border-radius:10px;
		z-Index: 9999
	}
}

@media screen and (max-width:380px) {
	.row {
				height: 400px;
	}
	#modal {
		display: none;
		background-color: #FFB2F5;
		position: absolute;
		top: 70px;
		left: 30px;
		padding: 10px;
		border: 2px solid #E2E2E2;
		z-Index: 9999
	}
}
</style>

<div id="modal">
    <h3>휴대폰 인증</h3>
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



<div id="legend">
	<legend>PW 찾기</legend>
</div>



    <div class="row">
        <div class="span12">
            <form action="schpwreg">
            	<fieldset>
               
               		<div class="control-group">
	                 <div class="control-label"  style="width:100px;"><strong>아이디</strong></div>
	                 <div class="controls" style="margin-top: 7px;">
	                 	<input type="text" name ="aid" value="${user.aid }" class="input-xlarge" style="height: 25px; width: 220px">
	                 	<form:errors path="mngUserVO.aid"/>
	                 </div>
	               </div>
	               
	               
	               <div class="control-group" style="margin-top: 7px;">
	                 <div class="control-label"  style="width:100px;"><strong>이름</strong></div>
	                 <div class="controls " style="margin-top: 7px;">
	                 	<input type="text" name ="aname" value="${user.aname }" class="input-xlarge" style="height: 25px; width: 220px">
	                 	<form:errors path="mngUserVO.aname"/>
	                 </div>
	               </div>
               
               
					<div class="control-group" style="margin-top: 7px;">
              			<div class="control-label"  style="width:100px;"><strong>생년월일</strong></div>
	                 	<div class="controls" style="margin-top: 7px;">
	                 		<input type="date" name="abirth" value="${user.abirth }" max=<%=strdate %> class="input-xlarge" style="height: 25px; width: 220px">
	                 		<form:errors path="mngUserVO.abirth"/>
	                    </div>
               		</div>
               
               
               		<div class="control-group" style="margin-top: 7px;">
              			<div class="control-label" style="width:100px;"><strong>핸드폰</strong></div>
	                 	<div class="controls" style=" width:220px; margin-top: 7px;">
	                 		
							<input type="text" name="phone" value="010" maxlength="3" style="width: 65px; height: 25px;">
							-
							<input type="text" name="phone" maxlength="4" style="width: 65px; height: 25px;" value="${user.phone[1] }">
							-
							<input type="text" name="phone" maxlength="4" style="width: 65px; height: 25px;" value="${user.phone[2] }">
							
	                 		<form:errors path="mngUserVO.aphone"/>
	                    </div>
               		</div>
               		
               		
               		
               		
              		<div class="control-group">
                 
                 		<div class="controls" style="margin-top: 10px;">
                 
                 			<input type="button" value="돌아가기" class="btn btn-success" onclick="location='/mvc/manager/loginf'">
	                 		<input type="submit" value="찾기" class="btn btn-success">
	                   		<form:errors path="mngUserVO.ainfo"/>
	                  	</div>
	                </div>
	              </fieldset>
            </form>
        </div>
    </div>




