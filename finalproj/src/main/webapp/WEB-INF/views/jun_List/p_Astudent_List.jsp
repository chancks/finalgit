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


<title>Insert title here</title>
</head>
<body>
<div>
	<c:forEach items="${data }" var="row" varStatus="no">

				<div id="a">
					<div>
						<h2>학생ID</h2>
					</div>
					<div>${row.aid}</div>
				</div>

				<div id="a">
					<div>
						<h2>학생이름</h2>
					</div>
					<div>${row.aname}</div>
				</div>

				<div id="a">
					<div>
						<h2>등록 여부</h2>
					</div>
					<div>${row.rpay}</div>
				</div>

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@<br>
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@<br>
			</c:forEach>
			<a href="/mvc/jun_List/p_Course_List?cid=bbb&mypage=true">뒤로 가기</a>
</div>
</body>
</html>