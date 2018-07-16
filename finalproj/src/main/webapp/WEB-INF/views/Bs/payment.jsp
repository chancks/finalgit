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
	<form action="payReg" method="post" enctype="multipart/form-data">
		<input type="hidden" value="${30*param.cnt }" name="cpprice" />
		
		<div><input type="text" name="cpnum" /></div>
		<div>결제 금액:${30*param.cnt }만원</div>
		<div><input type="submit" value="결제" /></div>
	</form>
</body>
</html>