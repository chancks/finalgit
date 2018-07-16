<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강신청</title>
<style type="text/css">
#in{

 float: left;
 width: 100px;
 border: 1px black solid;
}
#wrap{
border: 1px red solid;
width: 600px;
height: 200px;
}
#mine{
border: 1px blue solid;
width: 600px;
height: 200px;
}
</style>
</head>
<body>
<div id="wrap">
<c:forEach var="rr" items="${data }">
	<div id="in">${rr.ccode }</div>
	<div id="in">${rr.ctitle }</div>
	<div id="in">${rr.cname }</div>
	<div id="in">${rr.ctotal-rr.tot }</div>
	<div id="in"><a href="insertReg?ccode=${rr.ccode }">신청</a></div>	
</c:forEach>
</div>
<div>
	<c:if test="${startPage >1}">
		<a href="registerfc?mypage=true&page=1">[처음]</a>
		<a href="registerfc?mypage=true&page=${data3.startPage-1}"><</a>
	</c:if>
	<c:forEach var="i" begin="${data3.startPage }" end="${data3.endPage }">
		<c:choose>
			<c:when test="${i==data3.page }">
				[${i }]
			</c:when>
			<c:otherwise>
				<a href="registerfc?mypage=true&page=${i }">${i }</a>				
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${data3.endPage<data3.totalPage }">
		<a href="registerfc?mypage=true&page=${data3.endPage+1}">></a>
		<a href="registerfc?mypage=true&page=${data3.totalPage }">[마지막]</a>
	</c:if>
</div>
<div id="mine"><jsp:include page="myregister.jsp"/></div>
</body>
</html>