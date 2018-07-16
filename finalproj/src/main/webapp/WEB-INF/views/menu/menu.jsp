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
<c:choose>
	<c:when test="${grade eq '학생' }"><!-- 학생  -->
		<a href="/mvc/manager/myinfo?mypage=true">내 정보</a>
		<a href="/mvc/Bs/registerfc?mypage=true&page=1">수강신청</a>
		<a href="/mvc/Bs/timetable?mypage=true">시간표</a>
	</c:when>
	<c:when test="${grade eq '강사' }"><!-- 강사 -->
		<a href="/mvc/manager/myinfo?mypage=true">내 정보</a>
		<a href="/mvc/jun_List/p_Course_List?mypage=true">내 강의</a>
	</c:when>
	<c:otherwise><!-- 관리자,행정 -->
		<c:if test="${grade eq '행정' }">
			<a href="/mvc/manager/myinfo?mypage=true">내 정보</a>
		</c:if>
			<a href="/mvc/jun_List/course_register?mypage=true">과목 등록</a>
			<a href="/mvc/jun_List/course_List?mypage=true">등록 과목 리스트</a>
			<a href="/mvc/jun_List/astudent_List?mypage=true">학생 리스트</a>
			<a href="/mvc/jun_List/professor_List?mypage=true">강사 리스트</a>
			<a href="/mvc/Bs/totpay?mypage=true">결제내역</a>
	</c:otherwise>
</c:choose>
</body>
</html>