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
<div style="border: 0.5px silver solid; height:100%; ">
	<!-- 검색@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
	<div style="text-align: center; ">
		<div id="search" style="display: inline-block; height: 40px">
			<form action="?">
				<select name="schCol" style="width: 100px; height: 28px;">
					<option value="ctitle">과목 명</option>
					<option value="cname">강사명</option>
					<option value="ccode">과목 코드</option>
				</select> <input type="text" name="ctitle" style="height: 25px; margin-top: 9px;" /><input type="submit" value="검색" style="height: 28px; margin-left: 4px;" />
			</form>
		</div>
	</div>
	<!-- 검색@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->



<div class="container" style=" width: 900px;">
	<table id = "table1" class="table table-hover" style="border: 1px white solid;">
		<thead>
			<tr style="background-color: #FF4848; text-align: center" >

				<th style="text-align: center"><font color = "white">과정 명</font></th>
				<th style="text-align: center"><font color = "white">강사 명</font></th>
				<th style="text-align: center"><font color = "white">강사 id</font></th>
				<th style="text-align: center"><font color = "white">과정 기간</font></th>
				<th style="text-align: center"><font color = "white">요일</font></th>
				<th style="text-align: center"><font color = "white">수업 시간</font></th>
			</tr>
		</thead>
		<tbody>
				<c:forEach items="${data }" var="row" varStatus="no">
				<tr style="text-align: center">
					<td style="background-color:#FFC6C6;text-align: center"><a href="course_Detail?ccode=${row.ccode }&cday=${row.cday }&mypage=true">${row.ctitle}</a></td>
					<td style="background-color: #FFEAEA;text-align: center">${row.cname }</td>
					<td style="background-color:#FFC6C6;text-align: center">${row.cid}</td>
					<td style="background-color: #FFEAEA;text-align: center">${row.cstart}&nbsp&nbsp~&nbsp&nbsp${row.cfinish}</td>
					<td style="background-color: #FFC6C6; text-align: center">${row.cday}</td>
					<td style="background-color: #FFEAEA;text-align: center">${row.ctime }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="text-center">
		<ul class="pagination">
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
		</ul>
	</div>
</div>


<hr size=1px color="#ddd">	
	<a href="../">뒤로 가기</a>
	
	</div>
</body>
</html>
