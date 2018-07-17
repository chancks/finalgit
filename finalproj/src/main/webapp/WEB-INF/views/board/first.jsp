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
data가 안넘어온다
	<div>
		<c:forEach var="qq" items="${data }" varStatus="no">
			<c:if test="${no.index<3}">
				<div>qna:${qq.title }</div>
				<div>
					qna:${qq.reg_date }
				</div>
			</c:if>
		</c:forEach>
	</div>
	<div>
		<c:forEach var="nn" items="${data2 }" varStatus="no">
			<c:if test="${no.index<3 }">
				<div>공지:${nn.title }</div>
				<div>
					공지:${nn.reg_date }
				</div>
			</c:if>
		</c:forEach>
	</div>
	<div>
		<c:forEach var="rr" items="${data3 }" varStatus="no">
			<c:if test="${no.index<3 }">
				<div>후기:${rr.title }</div>
				<div>
					후기:${rr.reg_date }
				</div>
			</c:if>
		</c:forEach>
	</div>
</body>
</html>