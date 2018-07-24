<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="ct" tagdir="/WEB-INF/tags" %>  
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta name="viewport"content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">
<style type="text/css">
table{
	width:320;
}
#table_rap{
width: 700px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<h2>후기</h2>
<input type="hidden" value="${review.seq}" name="seq">
<div id="table_rap">
<table class="table" align="center">
	<tr>	
		<th style="background-color:#D8D8D8; width: 10%;">제목</th><th colspan="3">${review.title}</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">작성자</th><th>익명</th>
		<th style="background-color:#D8D8D8; width: 50px; ">강사</th><th>${review.pro }</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">작성일</th><th colspan="3">${review.reg_date}</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">조회수</th><th colspan="3">${review.cnt}</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">내용</th><th colspan="3"><ct:conBr>${review.content}</ct:conBr></th>
		</tr><tr>
		
		<th colspan="2" align="right">
			<a href="reviewList">목록</a>
			<c:if test="${review.pname eq id}">
				<a href="reviewDelete?id=${review.id}">삭제</a>
				<a href="reviewModify?id=${review.id}">수정</a>
			</c:if>
			<c:if test="${grade eq 'admin' or grade eq 'administ' }">
				<a href="reviewDelete?id=${review.id}">삭제</a>
			</c:if>
		</th>
		
	</tr>
</table>
</div>
</body>
</html>