<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="cc" items="${data }">
<div>${cc.ctitle }</div>
<div>${cc.ccontent }</div>
<div>${cc.cname }</div>
<div>시작일:<fmt:formatDate value="${cc.cstart }" pattern="yyyy-MM-dd"/></div>
<div>종료일:<fmt:formatDate value="${cc.cfinish }" pattern="yyyy-MM-dd"/></div>
</c:forEach>
</body>
</html>