<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시간표</title>

</head>
<body>
<div id="aa">
<table border="">
<c:forEach var="i" begin="0" end="8">
	<tr>
		<c:forEach var="j" begin="0" end="7">
		<td>
			<c:forEach items="${data }" var="dd" varStatus="no">
					<c:if test="${i==0 && j!=0 && no.index==1}">
						${dd.dayarr[j-1] }
					</c:if>
					<c:if test="${dd.dayarr[j-1] eq dd.cday}">
						<c:forEach var="tt" items="${dd.timearr }">
							<c:if test="${i==tt }">
								${dd.ctitle }<br>${dd.cname }
							</c:if>
						</c:forEach>
					</c:if>
				</c:forEach>
			
				${i },${j }
			</td>
		</c:forEach>
	</tr>
</c:forEach>
</table>
</div>
</body>
</html>