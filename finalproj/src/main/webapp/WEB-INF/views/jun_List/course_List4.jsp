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
전체목록 페이지
 <br><br><br><br><br><br> 


	<!-- 검색@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
	<div id="search">
		<form action="?">
			<select name="schCol">
				<option value="ctitle">과목 명</option>
				<option value="cname">강사명</option>
				<option value="ccode">과목 코드</option>
			</select> <input type="text" name="ctitle" /><input type="submit" value="검색" />
		</form>
	</div>
	<!-- 검색@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

	<c:forEach items="${data }" var="row" varStatus="no">

		<div id="a">
			<div>
				<h2>과정명</h2>
			</div>
			<div>
				<a href="course_Detail?ccode=${row.ccode }&mypage=true">${row.ctitle}</a>
			</div>
			<div>${row.ctitle}</div>
		</div>

		<div id="a">
			<div>
				<h2>강사명</h2>
			</div>
			<div>${row.cname }</div>
		</div>


		<div id="a">
			<div>
				<h2>강사ID</h2>
			</div>
			<div>${row.cid }</div>
		</div>

		<div id="a">
			<div>
				<h2>과목 코드</h2>
			</div>
			<div>${row.ccode }</div>
		</div>

		<div id="a">
			<div>
				<h2>과정 기간</h2>
			</div>
			<div>시작일</div>
			<div>${row.cstart}</div>
			<div>종료일</div>
			<div>${row.cfinish}</div>
		</div>

		<div id="a">
			<div>
				<h2>수업 시간</h2>
			</div>
			<div>요일</div>
			<div>${row.cday }</div>
			<div>파트</div>
			<div>${row.ctime}</div>
		</div>

		<div id="a">
			<div>
				<h2>과정내용</h2>
			</div>
			<div>${row.ccontent }</div>
		</div>

		<div>
			<div>
				<h2>총 원</h2>
			</div>
			<div>${row.ctotal}</div>
		</div>
		<br>@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@<br>
	</c:forEach>

	<a href="../">뒤로 가기</a>
</body>
</html>