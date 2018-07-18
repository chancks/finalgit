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

link_delete = function(ccode){
     if (confirm("정말 삭제하시겠습니까??") == true){    //확인
            location.href="course_Delete?ccode="+ccode;
     }else{   //취소
         return false;
     }
}

</script>

<title>Insert title here</title>
</head>
<body>

	<div id="a">
		<div>
			<h2>과정명</h2>
		</div>
		<div>${data.ctitle }</div>
	</div>

	<div id="a">
		<div>
			<h2>강사명</h2>
		</div>
		<div>${data.cname }</div>
	</div>

	<div id="a">
		<div>
			<h2>강사아이디</h2>
		</div>
		<div>${data.cid}</div>
	</div>


	<div id="a">
		<div>
			<h2>과목 코드</h2>
		</div>
		<div>${data.ccode }</div>
	</div>

	<div id="a">
		<div>
			<h2>과정 기간</h2>
		</div>
		<div>시작일</div>
		<div>${data.cstart}</div>
		<div>종료일</div>
		<div>${data.cfinish}</div>
	</div>

	<div id="a">
		<div>
			<h2>수업 시간</h2>
		</div>
		<div>요일</div>
		<div>${data.cday }</div>
		<div>파트</div>
		<div>${data.ctime}</div>
	</div>

	<div id="a">
		<div>
			<h2>과정내용</h2>
		</div>
		<div>${data.ccontent }</div>
	</div>

	<div>
		<div>
			<h2>총 원</h2>
		</div>
		<div>${data.ctotal}</div>
	</div>
	<br>@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	<br>
<div><a href="course_List">뒤로 가기</a></div>
<div><a href="course_Modify?ccode=${data.ccode }">과목 수정</a></div>
<div><a href="course_Delete?ccode=${data.ccode }">과목 삭제</a></div>

<%-- <c:when test="${sessionScope.id=='admin' }">
	
</c:when> --%>
</body>
</html>