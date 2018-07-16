<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시간표</title>
<style type="text/css">
#outter {
	border-left: 1px black solid;
	border-top: 1px black solid;
	width: 100px;
	height: 900px;
	float: left;
}

#inner {
	border-bottom: 1px black solid;
	border-right: 1px black solid;
	width: 100px;
	height: 100px;
}
</style>
</head>
<body>
<c:forEach var="i" begin="0" end="7">
	<div id="outter">
		<c:forEach var="j" begin="0" end="8">
			<div id="inner">
				<c:forEach items="${data }" var="dd" varStatus="no">
					<c:if test="${j==0 && i!=0 && no.index==1}">
						${dd.dayarr[i-1] }
					</c:if>
					<c:if test="${i==dd.cday}">
						<c:forEach var="tt" items="${dd.timearr }">
							<c:if test="${j==tt }">
								${dd.ctitle }<br>${dd.cname }
							</c:if>
						</c:forEach>
					</c:if>
				</c:forEach>
				<c:if test="${i==0 && j!=0 }">
					${j }교시
				</c:if>
				${i },${j }
			</div>
		</c:forEach>
	</div>
</c:forEach>
</body>
</html>