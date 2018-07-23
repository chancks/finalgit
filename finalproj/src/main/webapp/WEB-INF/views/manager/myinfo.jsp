<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="ct" tagdir="/WEB-INF/tags" %>
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

<div id="legend">
	<legend> 개인 정보</legend>
</div>
<table border="" class="table">
	<tr>
		<td style="background-color:#D8D8D8;  width:150px">등급</td>
		<td width="150">${user.agrade }</td>
		
		<c:choose>
			<c:when test="${user.aupfile!=null }">
				<td colspan="2" rowspan="3">
				<img src="${pageContext.request.contextPath}/resources/picture/${user.aupfile }" width="150" height="200">
			</c:when>
			<c:otherwise>
				<td colspan="2" rowspan="3">
				사진없음
			</c:otherwise>
		</c:choose>
		
		
		</td>
	</tr>
	<tr>
		<td style="background-color:#D8D8D8 ">id</td>
		<td>${user.aid}</td>
		
	</tr>
	<tr>
		<td style="background-color:#D8D8D8 ">이름</td>
		<td>${user.aname }</td>
<%-- 		<c:if test="${user.aupfile==null }">
			<td><input type="file"></td>
		</c:if> --%>
		
	</tr>
	<tr>
		<td style="background-color:#D8D8D8 ">이메일</td>
		<td colspan="2">${user.aemail }</td>
	</tr>
	<tr>
		<td style="background-color:#D8D8D8 ">핸드폰</td>
		<td colspan="2">${user.aphone }</td>
	</tr>
	<tr>
		<td style="background-color:#D8D8D8 ">생일</td>
		<td colspan="2">${user.abirth }</td>
	</tr>
	<tr>
		<td style="background-color:#D8D8D8 ">정보</td>
		<td colspan="2">
		<ct:conBr>${user.ainfo }</ct:conBr> 
		</td>
	</tr>
	<tr>
		<td colspan="3">
			<a href="modify">수정</a>
		</td>
	</tr>
</table>