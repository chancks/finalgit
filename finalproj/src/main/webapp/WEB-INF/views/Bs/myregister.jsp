<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#in2{

 float: left;
 width: 100px;
}
#wrap2{
border: 1px red solid;
width: 450px;
height: 200px;
}

</style>
</head>
<body>
	<div id="wrap2">
		<c:forEach var="rr" items="${data2 }">
				<div id="in2">${rr.ctitle }</div>
				<div id="in2">${rr.cname }</div>
				<div id="in2">
					<a href="deleteReg?rcode=${rr.ccode }">취소</a>
				</div>
		</c:forEach>
		<div id="in2">
			<div>총 갯수:${data2.size() }</div>
			<div>
				<a href="payment?cnt=${data2.size() }">결제</a>
			</div>
		</div>
	</div>
</body>
</html>