<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


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
	 
	
}
</script>

<style>

#modal {display:none;background-color:#FFFFFF;position:absolute;top:30px;left:200px;padding:10px;
		border:2px solid #E2E2E2;z-Index:9999}
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

<div class="container">
    <div class="row">
        <div class="span12">
            <form action="schpwreg">
            	<fieldset>
	               <div id="legend">
	                 <legend>패스워드 찾기</legend>
	               </div>
               
               		<div class="control-group">
	                 <label class="control-label">아이디</label>
	                 <div class="controls">
	                 	<input type="text" name ="aid" value="${user.aid }" class="input-xlarge">
	                 	<form:errors path="mngUserVO.aid"/>
	                 </div>
	               </div>
	               
	               
	               <div class="control-group">
	                 <label class="control-label">이름</label>
	                 <div class="controls">
	                 	<input type="text" name ="aname" value="${user.aname }" class="input-xlarge">
	                 	<form:errors path="mngUserVO.aname"/>
	                 </div>
	               </div>
               
               
					<div class="control-group">
              			<label class="control-label">생년월일</label>
	                 	<div class="controls">
	                 		<input type="date" name="abirth" value="${user.abirth }" class="input-xlarge">
	                 		<form:errors path="mngUserVO.abirth"/>
	                    </div>
               		</div>
               
               
               		<div class="control-group">
              			<label class="control-label">핸드폰</label>
	                 	<div class="controls">
	                 		
							<input type="text" name="phone" value="010" maxlength="3" style="width: 50px">
							-
							<input type="text" name="phone" maxlength="4" style="width: 50px" value="${user.phone[1] }">
							-
							<input type="text" name="phone" maxlength="4" style="width: 50px" value="${user.phone[2] }">
							
	                 		<form:errors path="mngUserVO.aphone"/>
	                    </div>
               		</div>
               		
               		
               		
               		
              		<div class="control-group">
                 
                 		<div class="controls">
                 
	                 		<input type="submit" value="찾기" class="btn btn-success">
	                   		<form:errors path="mngUserVO.ainfo"/>
	                  	</div>
	                </div>
	              </fieldset>
            </form>
        </div>
    </div>
</div>



