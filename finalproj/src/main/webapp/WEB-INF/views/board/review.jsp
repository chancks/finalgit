<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"content="width=device-width, initial-scale=1.0 , 
user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<title>Insert title here</title>
</head>
<body>
	<table border="">
		<form alction="?">
			<tr>
				<td colspan="5" align="center">
					<select name="schCol">
						<option value="title">제목</option>
						<option value="pname">작성자</option>
						<option value="content">내용</option>
						<option value="cnt">조횟수</option>
					</select>
					<input type="text" name="title" value="${param.title}">
					<input type="submit" value="검색">
				</td>
			</tr>
		</form>
		<tr> 
			<td align="center">번호</td>
			<td align="center">제목</td>
			<td align="center">작성자</td>
			<td align="center">작성일</td>
			<td align="center">조회수</td>
		</tr>	

		<c:forEach items="${review}" var="reviewRow" varStatus="reviewNo">
			<tr>
				<td align="center">${reviewNo.index+1}</td>
				<td><a href="reviewDetail?id=${reviewRow.id }">${reviewRow.title}</a></td>
				<td>${reviewRow.pname}</td>
				<td>${reviewRow.reg_date}</td>
				<td align="center">${reviewRow.cnt}</td>
			</tr>
		</c:forEach>
	 
<!-- 		<tr>
			<td colspan="5" align="right">
			<a href="reviewInsertForm">글쓰기</a>
			</td>
		</tr>	 -->
				
	</table>
</body>
</html>