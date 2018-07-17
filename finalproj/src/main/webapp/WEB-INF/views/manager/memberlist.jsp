<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원리스트</title>
</head>
<body>
	<c:forEach var="mem" items="${data }">
	<c:if test="${mem.agrade ne '관리자' }">
		<div>${mem.aid }</div>
		<div>${mem.aname }</div>
		<div>${mem.aemail }</div>
		<div>${mem.aphone }</div>
		<div>${mem.agrade }</div>
		<c:choose>
			<c:when test="${grade eq '행정' && mem.agrade eq '행정' }">
			</c:when>
			<c:otherwise>
				<div><a href="?aid=${mem.aid }">삭제</a></div>
			</c:otherwise>
		</c:choose>
	</c:if>
	</c:forEach>
</body>
</html>