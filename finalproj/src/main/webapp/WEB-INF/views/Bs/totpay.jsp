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
<div class="container" style=" width: 900px;">
	<table id = "table1" class="table table-hover" style="border: 1px white solid;">
		<thead>
			<tr style="background-color: #FF4848; text-align: center" >

				<th style="text-align: center"><font color = "white">학생 id</font></th>
				<th style="text-align: center"><font color = "white">과목명</font></th>
				<th style="text-align: center"><font color = "white">강사</font></th>
				<th style="text-align: center"><font color = "white">과목코드</font></th>
				<th style="text-align: center"><font color = "white">결제 상태</font></th>
			</tr>
		</thead>
		<tbody>
		
		<c:forEach var="pay" items="${data }">
				<tr style="text-align: center">
					<td style="background-color:#FFC6C6;text-align: center">
						<a href="/mvc/manager/myinfo?aid=${pay.rid }&mypage=true">${pay.rid }</a>
					</td>
					<td style="background-color: #FFEAEA;text-align: center">${pay.rtitle }</td>
					<td style="background-color:#FFC6C6;text-align: center">${pay.rname }</td>
					<td style="background-color: #FFEAEA;text-align: center">${pay.rcode }</td>
					<td style="background-color: #FFC6C6; text-align: center">${pay.rpay }</td>
					
				</tr>
		</c:forEach>
				<tr>
					<td colspan="5" style="text-align: right">
						총 수강신청 수: ${data.size() }&nbsp;&nbsp;&nbsp;미 결제 수: ${tot }
					</td>
				</tr>
		</tbody>
	</table>
</div>
</body>
</html>