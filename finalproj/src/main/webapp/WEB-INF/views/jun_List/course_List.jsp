<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 , user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="../resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>


<style>
@media screen and (min-width:600px) {
	table {
		background-color: #ffff00;
	}
}

@media screen and (max-width:600px) {
	table {
		background-color: #00ff00;
	}
}

#a {
	float: left;
	background-color: gray;
	margin: 5px;
}

#search {
	margin-top: 60px;
}
</style>


<title>Insert title here</title>
</head>
<body>

	<div>
		<div
			style="background-color: gray; float: left; cursor: pointer; padding: 10px;"
			onclick="location.href='course_List'">전체 강의 목록</div>

		<div
			style="background-color: gray; float: left; cursor: pointer; padding: 10px;"
			onclick="location.href='course_List1'">개강 예정인 강의 목록</div>

		<div
			style="background-color: gray; float: left; cursor: pointer; padding: 10px;"
			onclick="location.href='course_List2'">개강 중인 강의 목록</div>

		<div style="background-color: gray; cursor: pointer; padding: 10px;"
			onclick="location.href='course_List3'">개강 종료된 강의 목록</div>

	</div>



	
	<!-- 여기부터 테스트입니다@@@@@@@@ㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲ -->

	<div
		style="width: 100%; height: 700px; border-bottom: 1px inset gray; background-color: yellow;">
	<div style="background-color: gray;">${list }
	</div>
	
		<jsp:include page="${list }"></jsp:include>
		
	</div>

	<!-- 
	여기가 테스트 끝입니다ㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲ -->

	

</body>
</html>