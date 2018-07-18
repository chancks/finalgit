<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div id="wrap2">
	<div class="container" style=" width: 900px;">
	<table id = "table1" class="table table-hover" style="border: 1px white solid;">
		<thead>
			<tr style="background-color: #FF4848; text-align: center" >

				<th style="text-align: center"><font color = "white">과정명</font></th>
				<th style="text-align: center"><font color = "white">강사</font></th>
				<th style="text-align: center"><font color = "white">취소</font></th>
			
			</tr>
		</thead>
		<tbody>
		
		<c:forEach var="rr" items="${data2 }">
			
				<tr style="text-align: center">
					<td style="background-color:#FFC6C6;text-align: center">${rr.ctitle }</td>
					<td style="background-color: #FFEAEA;text-align: center">${rr.cname }</td>
					<td style="background-color:#FFC6C6;text-align: center"><a href="deleteReg?rcode=${rr.ccode }">취소</a></td>
				</tr>
			</c:forEach>
			
			<tr>
				<td colspan="3" align="right">
				총 갯수:${data2.size() }&nbsp;&nbsp;
				<a href="payment?cnt=${data2.size() }">결제</a>
				</td>
			</tr>
		</tbody>
	</table>
	</div>
</div>
</body>
</html>