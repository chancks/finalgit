<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<title>Insert title here</title>
</head>
<body>
<table border="" align="center">

	<tr>
		<td>제목</td><td>${notice.title}</td>
		</tr><tr>
		<td>작성자</td><td>관리자</td>
		</tr><tr>
		<td>작성일</td><td>${notice.reg_date}</td>
		</tr><tr>
		<td>조회수</td><td>${notice.cnt}</td>
		</tr><tr>
		<td>내용</td><td>${notice.content}</td>
		</tr><tr>
		
		<td colspan="2" align="right">
			<a href="noticeList">목록</a>
			<a href="noticeDelete?id=${notice.id}">삭제</a>
			<a href="noticeModify?id=${notice.id}">수정</a>
		</td>
		
	</tr>

</table>
</body>
</html>