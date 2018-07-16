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

<form action="course_ModifyReg?=${data.ccode}" method="post" enctype="multipart/form-data">

	<div><h2>과정명</h2></div>
	${data.ctitle }
	<div><input type="text" name="ctitle" value="${data.ctitle }"/></div>
	
	<div><h2>강사명</h2></div>
	${data.cname}
	<div><input type="text" name="cname" value="${data.cname}"/></div>

	<div><h2>강사ID</h2></div>
	<div><input type="text" name="cid" value="${data.cid}"/></div>


	<div><h2>과정내용</h2></div>
	<div><textarea name="ccontent" rows="5" cols="20" >${data.ccontent}</textarea></div>
	
	
 	<div><h2>과정 기간</h2></div>
	<div>시작일</div>
		<div><input type="date" name="cstart" value= "${data.cstart}"/></div> <!-- onchange="submit()" -->
	<!-- <div><input type="text" name="cstart" /></div> -->
	<div>종료일</div>
		<div><input type="date" name="cfinish" value="${data.cfinish}"/></div>
	<!-- <div><input type="text" name="cfinish" /></div> -->
	 
	<div><h2>수업 시간</h2></div>
	<div>요일</div>
	<div><input type="number" name="cday" min="1" max="8" value="${data.cday}" /></div>
	<div>파트</div>
	<div><input type="text" name="ctime" value="${data.ctime}" /></div>
	

	<div><h2>과목 코드</h2></div>
	<div><input type="text" name="ccode" value="${data.ccode}" /></div>
	

	<div><h2>총 원</h2></div>
	<div><input type="text" name="ctotal"  value="${data.ctotal}"/></div>
	
	<div><input type="submit" value="작성" /></div>
	<div><input type="reset" value="초기화" /></div>
	<div><a href="course_Detail?ccode=${row.ccode }">뒤로가기</a></div>

</form>
</body>
</html>