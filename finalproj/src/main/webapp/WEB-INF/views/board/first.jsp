<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container" style=" width: 900px;">
	<table id = "table1" class="table table-hover" style="border: 1px white solid;">
		<thead>
			<tr style="background-color: #FF4848; text-align: center" >
				<td>QnA</td>
				<td>
					<a href="/mvc/board/qnaList">전체보기</a>
				</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="qq" items="${data }" varStatus="no">
			<c:if test="${no.index<3}">
				<tr style="text-align: center">
					<td style="background-color:#FFC6C6;text-align: center">${qq.title }</td>
					<td style="background-color: #FFEAEA;text-align: center">${qq.reg_date }</td>
				</tr>
			</c:if>
			</c:forEach>
		</tbody>
	</table>
</div>


	<div class="container" style=" width: 900px;">
	<table id = "table1" class="table table-hover" style="border: 1px white solid;">
		<thead>
			<tr style="background-color: #FF4848; text-align: center" >
				<td>공지</td>
				<td>
					<a href="/mvc/board/noticeList">전체보기</a>
				</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="nn" items="${data2 }" varStatus="no">
			<c:if test="${no.index<3}">
				<tr style="text-align: center">
					<td style="background-color:#FFC6C6;text-align: center">${nn.title }</td>
					<td style="background-color: #FFEAEA;text-align: center">${nn.reg_date }</td>
				</tr>
			</c:if>
			</c:forEach>
		</tbody>
	</table>
</div>
	<div class="container" style=" width: 900px;">
	<table id = "table1" class="table table-hover" style="border: 1px white solid;">
		<thead>
			<tr style="background-color: #FF4848; text-align: center" >
				<td>후기</td>
				<td>
					<a href="/mvc/board/reviewList">전체보기</a>
				</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="rr" items="${data3 }" varStatus="no">
			<c:if test="${no.index<3}">
				<tr style="text-align: center">
					<td style="background-color:#FFC6C6;text-align: center">${rr.title }</td>
					<td style="background-color: #FFEAEA;text-align: center">${rr.reg_date }</td>
				</tr>
			</c:if>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>