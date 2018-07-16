<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정산</title>
</head>
<body>
<c:forEach var="pay" items="${data }">
<div>${pay.rid }</div>
<div>${pay.rtitle }</div>
<div>${pay.rname }</div>
<div>${pay.rcode }</div>
<div>${pay.rpay }</div>
</c:forEach>
<div>총 수강신청 수: ${data.size() }</div>
<div>미 결제 수 :${tot }</div>
</body>
</html>