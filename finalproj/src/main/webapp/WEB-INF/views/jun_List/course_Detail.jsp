<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 , user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="../resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>


<style>
@media screen and (min-width:600px) {
	table {
	
	}
}

@media screen and (max-width:600px) {
	table {
		background-color: #00ff00;
	}
}

#table_rap{
width: 700px;
}
</style>
<script>


</script>

<title>Insert title here</title>
</head>
<body>

<div id="table_rap">
	<table class="table">
		<tr>
			<td style="background-color:#D8D8D8 ">과정 명</td>
			<td colspan="5">${data.ctitle }</td>
		</tr>

		<tr>
			<td style="background-color:#D8D8D8 ">강사 명</td>
			<td>${data.cname }</td>
			<td style="background-color:#D8D8D8 ">id</td>
			<td>${data.cid}</td>
			<td style="background-color:#D8D8D8 ">과목 코드</td>
			<td>${data.ccode }</td>
		</tr>
	
		<tr>
			<td style="background-color:#D8D8D8 ">요일</td>
			<td>${data.cday}</td>
			<td style="background-color:#D8D8D8 ">날짜</td>
			<td>${data.ctime}</td>
			<td style="background-color:#D8D8D8 ">총원</td>
			<td>${data.ctotal}</td>
		</tr>
		
		<tr>
			<td style="background-color:#D8D8D8 ">과정 기간</td>
			<td colspan="5">${data.cstart} ~ ${data.cfinish}</td>

		</tr>
		
	
		
		
		<tr>
			<td colspan="6" style="height: 400px">${data.ccontent }</td>
		</tr>
		
	</table>
	
</div>
		<hr size=1px color="silver">
<div><a href="course_List?mypage=true">뒤로 가기</a></div>
<div><a href="course_Modify?ccode=${data.ccode }&cday=${data.cday }&mypage=true">과목 수정</a></div>
<div><a href="course_Delete?ccode=${data.ccode }&cday=${data.cday }&mypage=true">과목 삭제</a></div>

<%-- <c:when test="${sessionScope.id=='admin' }">
	
</c:when> --%>
</body>
</html>