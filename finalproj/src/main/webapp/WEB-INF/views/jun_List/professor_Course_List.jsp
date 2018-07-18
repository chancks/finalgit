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
</style>
<script>

</script>

<title>Insert title here</title>
</head>
<body>
강사의 강의 몰록 리스트 
	
	<br>@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	<br>
	<c:forEach items="${data }" var="row" varStatus="no">
		<div id="a">
			<div>
				<h2>과목명</h2>
			</div>
			<div>${row.ctitle}</div>
		</div>
		
		<div id="a">
			<div>
				<h2>강사명</h2>
			</div>
			<div>${row.cname}</div>
		</div>
		
		<div>
			<div>
				<h2>수강생 정원</h2>
			</div>
			<div>${row.ctotal}</div>
		</div>

<br>@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	</c:forEach>
	<a href="professor_List?mypage=true">뒤로 가기</a>
</body>
</html>