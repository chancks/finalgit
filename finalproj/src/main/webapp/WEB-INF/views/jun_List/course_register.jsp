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



<style>
@media screen and (min-width:380px) {

}

@media screen and (max-width:380px) {


table{
	font-size: 10px;
	width:320;
}

}

</style>


<title>Insert title here</title>

</head>


<script type="text/javascript">

function join(){
	var time = document.getElementById('time');
	var frm = document.frm;
	var title = document.getElementById('ctitle');
	var code = document.getElementById('ccode');
	var total = document.getElementById('ctotal');
	var content = document.getElementById('ccontent');

	

 	
	if(title.value==''||title.value==null){ alert("과정명을 입력하세요");return;}
	else if(code.value==''||code.value==null){alert("과목 코드를 입력하세요");return;}
	else if(!(/^([0-9]){1}$/.test(time.value)||(/^([0-9]){1},([0-9]){1}$/).test(time.value)||(/^([0-9]){1},([0-9]){1},([0-9]){1}$/).test(time.value))){
		alert("시간은 0,0,0 형태로 1~3시간까지 가능합니다.");
		id.focus();
		return;
	}
	else if(total.value==''||total.value==null){alert("정원을 입력하세요");return;}
	else if(content.value==''||content.value==null){alert("내용을 입력하세요");return;}	
	else{
 		frm.submit();
 		return;
	 }  
}

</script>

<body>

<div id="legend">
	<legend>과목 등록</legend>
</div>

<form action="course_insertReg?=" method="post" enctype="multipart/form-data" name="frm">
		<input type="hidden" name="mypage" value="true"/>
<%-- 		<input type="hidden" name="schCol" value="${data.aname }"/> --%>
		<table class="table"> 
		
		
		
		
		<tr>
			<td style="background-color:#D8D8D8;">과정 명</td>
			<td colspan="5">	<input type="text" name="ctitle" id="ctitle" style="width:730px;height:21px" /></td>
		</tr>
		
		
		
		
		<tr>	
<%-- 			<td style="background-color:#D8D8D8;">강사 선택</td>
			<td><select name="schCol" style="width:120px; height:26px">
					<c:forEach items="${data }" var="row" varStatus="no">
						<option value="${row.aname}">${row.aname}</option>
					</c:forEach>
				</select></td>
			 --%>
			<td style="background-color:#D8D8D8;">강사 선택</td>
			<td>	<select name="col" style="width:150px; height:26px">
					<c:forEach items="${data }" var="row" varStatus="no">
						<option value="${row.aid}">${row.aname}(id:${row.aid})</option>
					</c:forEach>
				</select></td>
			
			<td style="background-color:#D8D8D8;">과목 코드</td>
			<td><input type="text" name="ccode" id="ccode" style="width:150px;height:26px;"/>
			</td>
		</tr>
		
		
		
		
		
		<tr>
			<td style="background-color:#D8D8D8;">시작일</td>
			<td>	<input type="date" name="cstart" value="2018-07-20" style="width:150px; height:26px"/>
		</td>
			<td style="background-color:#D8D8D8;">종료일</td>
			<td>	<input type="date" name="cfinish" value="2018-08-30" style="width:150px; height:26px" />
			</td>
		</tr>
		
		
		
		
		
		<tr>
			<td style="background-color:#D8D8D8;">요일</td>
			<td>	<select name="cday" style="width:120px; height:26px">
						<option value="월">월</option>
						<option value="화">화</option>
						<option value="수">수</option>
						<option value="목">목</option>
						<option value="금">금</option>
						<option value="토">토</option>
						<option value="일">일</option>
				</select></td>
			
			<td style="background-color:#D8D8D8;">시간</td>
			<td>	<input type="text" name="ctime" id="time" style=" width:120px;height:26px;" />
		</td>
			
			<td style="background-color:#D8D8D8;">정원</td>
			<td>	<input type="number" name="ctotal" id="ctotal" min="1" max="100" style=" width:110px; height:26px;margin-left: 10px" />
			</td>
		</tr>
		
		
	
		
		<tr>
			<td style="background-color:#D8D8D8;">과정 내용</td>
			<td  colspan="5"><textarea name="ccontent" id="ccontent" rows="10" cols="89px" style="margin-top: 4px; resize: none;"></textarea></td>
		</tr>
		
	
		</table>
		

			
<hr size=1px color="#ddd">	
		

			<div>
			
			<input type="button" onclick="join()" value="등록">
			<!-- 	<input type="submit" value="작성" /><a href="/mvc/manager/memberlist?mypage=true">뒤로 가기</a> -->
			</div>

	</form>
</body>
</html>