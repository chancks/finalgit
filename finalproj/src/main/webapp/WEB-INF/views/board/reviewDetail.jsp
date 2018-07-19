<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta name="viewport"content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<title>Insert title here</title>
</head>
<body>
<h2>후기</h2>
<input type="hidden" value="${review.seq}" name="seq">
<table class="table" align="center">
	<tr>	
		<th style="background-color:#D8D8D8; width: 100px; ">제목</th><th>${review.title}</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">작성자</th><th>${review.pname }</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">작성일</th><th>${review.reg_date}</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">조회수</th><th>${review.cnt}</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">내용</th><th>${review.content}</th>
		</tr><tr>
		
		<th colspan="2" align="right">
			<input type="button" class="btn btn-success" href="reviewList" value="목록"/>
			<c:if test="${grade eq '학생' }">
				<input type="button" class="btn btn-success" href="reviewDelete?id=${review.id}" value="삭제"/>
				<input type="button" class="btn btn-success" href="reviewModify?id=${review.id}" value="수정"/>
			</c:if>
		</th>
		
	</tr>
</table>
</body>
</html>