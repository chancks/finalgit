<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<div style="border: red 1px solid; width: 1000px">
	<c:choose>
		<c:when test="${id!=null }">
			${id } 님 반갑습니다.
			
			<input type="button" onclick="location.href='/manager/logout'" value="로그아웃">
			<c:choose>
				<c:when test="${grade eq '학생' }">
					<input type="button" onclick="location.href='/Bs/timetable?mypage=true'" value="마이페이지" >
				</c:when>
				<c:when test="${grade eq '강사' }">
					<input type="button" onclick="location.href='/jun_list/p_Course_List?mypage=true'" value="마이페이지" >
				</c:when>
				<c:when test="${grade eq '행정' }">
					<input type="button" onclick="location.href='/Bs/timetable?mypage=true'" value="마이페이지" >
				</c:when>
				<c:otherwise>
					<input type="button" onclick="location.href='/manager/memberlist?mypage=true'" value="마이페이지" >
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			<input type="button" onclick="location='/manager/loginf'" value="로그인">
			<input type="button" onclick="location='/manager/join'" value="회원가입">
		</c:otherwise>
	</c:choose>
</div>
<div>
<a href="mvc/Bs/academyinfo">학원소개</a>
<a href="">강사소개</a>
<a href="">과목소개</a>
<a href="">고객센터</a>
</div>
<div>
<div>
<c:if test="${param.mypage!=null }">
<jsp:include page="menu/menu.jsp"/>
</c:if>
</div>
<div>
<jsp:include page="${service }/${main }.jsp"/>
</div>
</div>

</body>
</html>
