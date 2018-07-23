<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="../resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>
<title>시간표</title>

</head>
<body>
<div id="legend">
	<legend>시간표</legend>
</div>

<div id="aa">
<table border="">
<c:forEach var="i" begin="0" end="8">
	<tr>
		<c:forEach var="j" begin="0" end="7">
		<td width="150px" height="50px" style="text-align: center">
			<c:if test="${i==0 && j!=0}">
				${day[j-1] }
			</c:if>
			<c:forEach items="${data }" var="dd" varStatus="no">
					
					<c:if test="${dd.dayarr[j-1] eq dd.cday}">
						<c:forEach var="tt" items="${dd.timearr }">
							<c:if test="${i==tt }">
								${dd.ctitle }
								<c:if test="${grade eq 'student' }">
									<br>${dd.cname }
								</c:if>
							</c:if>
						</c:forEach>
					</c:if>
			</c:forEach>
					<c:if test="${i!=0 && j==0 }">
						${i }교시<br>
						${i+13 }:00~${i+14 }:00
					</c:if>
		</td>
		</c:forEach>
	</tr>
</c:forEach>
</table>
</div>
</body>
</html>