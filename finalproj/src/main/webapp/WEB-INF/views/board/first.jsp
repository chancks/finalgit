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

	<div>
	QnA
	<a href="/mvc/board/qnaList">전체보기</a>
		<c:forEach var="qq" items="${data }" varStatus="no">
			<c:if test="${no.index<3}">
				<div>${qq.title }</div>
				<div>
					${qq.reg_date }
				</div>
			</c:if>
		</c:forEach>
	</div>
	<div>
	공지
	<a href="/mvc/board/noticeList">전체보기</a>
		<c:forEach var="nn" items="${data2 }" varStatus="no">
			<c:if test="${no.index<3 }">
				<div>${nn.title }</div>
				<div>
					${nn.reg_date }
				</div>
			</c:if>
		</c:forEach>
	</div>
	<div>
	후기
	<a href="/mvc/board/reviewList">전체보기</a>
		<c:forEach var="rr" items="${data3 }" varStatus="no">
			<c:if test="${no.index<3 }">
				<div>${rr.title }</div>
				<div>
					${rr.reg_date }
				</div>
			</c:if>
		</c:forEach>
	</div>
</body>
</html>