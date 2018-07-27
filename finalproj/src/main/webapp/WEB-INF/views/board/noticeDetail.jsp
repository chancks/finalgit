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
<h2>공지사항</h2>
<div id="table_rap">
<table class="table" align="center">

	<tr>
		<th style="background-color:#D8D8D8; width: 100px; ">제목</th><th>${notice.title}</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">작성자</th><th>${notice.pname }</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">작성일</th><th>${notice.reg_date}</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">조회수</th><th>${notice.cnt}</th>
		</tr><tr>
		<th style="background-color:#D8D8D8 ">내용</th><th><ct:conBr>${notice.content}</ct:conBr></th>
		</tr><tr>
		
		<th colspan="2" align="right">
			<a href="noticeList?page=${param.page }">목록</a>
			<c:if test="${grade eq 'admin' or grade eq 'administ'}">
				<a href="noticeDelete?id=${notice.id}">삭제</a>
				<a href="noticeModify?id=${notice.id}">수정</a>
			</c:if>
			
		</th>
		
	</tr>

</table>
</div>
</body>
</html>