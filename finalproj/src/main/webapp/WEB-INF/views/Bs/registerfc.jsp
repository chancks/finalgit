<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강신청</title>

</head>
<body>
<div id="wrap">

<div class="container" style=" width: 900px;">
	<table id = "table1" class="table table-hover" style="border: 1px white solid;">
		<thead>
			<tr style="background-color: #FF4848; text-align: center" >

				<th style="text-align: center"><font color = "white">과목코드</font></th>
				<th style="text-align: center"><font color = "white">과목명</font></th>
				<th style="text-align: center"><font color = "white">강사</font></th>
				<th style="text-align: center"><font color = "white">정원</font></th>
				<th style="text-align: center"><font color = "white">신청</font></th>
			
			</tr>
		</thead>
		<tbody>
		<c:forEach var="rr" items="${data }">
	
				<tr style="text-align: center">
					<td style="background-color:#FFC6C6;text-align: center">${rr.ccode }</td>
					<td style="background-color: #FFEAEA;text-align: center">${rr.ctitle }</td>
					<td style="background-color:#FFC6C6;text-align: center">${rr.cname }</td>
					<td style="background-color: #FFEAEA;text-align: center">${rr.ctotal-rr.tot }</td>
					<td style="background-color: #FFC6C6; text-align: center"><a href="insertReg?ccode=${rr.ccode }">신청</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<div class="text-center">
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

</div>



<div id="mine"><jsp:include page="myregister.jsp"/></div>
</body>
</html>