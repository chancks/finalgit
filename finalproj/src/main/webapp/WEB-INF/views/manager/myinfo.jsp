<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h1>내정보</h1>
<table border="">
	<tr>
		<td>등급</td>
		<td width="150">${user.agrade }</td>
		
		<c:choose>
			<c:when test="${user.aupfile!=null }">
				<td colspan="2" rowspan="3">
				<img src="../resources/picture/${user.aupfile }" width="150" height="200">
			</c:when>
			<c:otherwise>
				<td colspan="2" rowspan="3">
				사진없음
			</c:otherwise>
		</c:choose>
		
		
		</td>
	</tr>
	<tr>
		<td>id</td>
		<td>${user.aid}</td>
		
	</tr>
	<tr>
		<td>이름</td>
		<td>${user.aname }</td>
<%-- 		<c:if test="${user.aupfile==null }">
			<td><input type="file"></td>
		</c:if> --%>
		
	</tr>
	<tr>
		<td>이메일</td>
		<td colspan="2">${user.aemail }</td>
	</tr>
	<tr>
		<td>핸드폰</td>
		<td colspan="2">${user.aphone }</td>
	</tr>
	<tr>
		<td>생일</td>
		<td colspan="2">${user.abirth }</td>
	</tr>
	<tr>
		<td>정보</td>
		<td colspan="2">${user.ainfo }</td>
	</tr>
	<tr>
		<td colspan="3">
			<a href="modify">수정</a>
		</td>
	</tr>
</table>