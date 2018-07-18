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
		
	}
}

@media screen and (max-width:600px) {
	table {
		background-color: #00ff00;
	}
}

.points_table thead {
	width: 100%;
}

.points_table tbody {
	height: 300px;
	overflow-y: auto;
	width: 100%;
}

.points_table thead tr {
	width: 99%;
}

.points_table tr {
	width: 100%;
}

.points_table thead, .points_table tbody, .points_table tr,
	.points_table td, .points_table th {
	display: inline-block;
}

.points_table thead {
	background: #232323;
	color: #A6A6A6;
}

.points_table tbody td, .points_table thead>tr>th {
	float: left;
	border-bottom-width: 0;
}

.points_table>tbody>tr>td, .points_table>tbody>tr>th, .points_table>tfoot>tr>td,
	.points_table>tfoot>tr>th, .points_table>thead>tr>td, .points_table>thead>tr>th
	{
	padding: 8px;
	height: 30px;
	text-align: center;
	line-height: 12px;
}

.odd {
	background: #ffffff;
	color: #000;
}

.even {
	background: #efefef;
	color: #000;
}

.points_table_scrollbar {
	height: 300px;
	overflow-y: scroll;
}

.points_table_scrollbar::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.4);
	border-radius: 10px;
	background-color: #444444;
}

.points_table_scrollbar::-webkit-scrollbar {
	width: 1%;
	min-width: 5px;
	background-color: #F5F5F5;
}

.points_table_scrollbar::-webkit-scrollbar-thumb {
	border-radius: 10px;
	background-color: #BDBDBD;
	background-image: -webkit-linear-gradient(90deg, transparent, rgba(0, 0, 0, 0.4)
		50%, transparent, transparent)
}
</style>


<title>Insert title here</title>
</head>
<body>
	<div style="border: 0.5px silver solid; height: 100%;">
		<!-- 검색@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
		<div style="text-align: center;">
			<div id="search" style="display: inline-block; height: 40px">
				<form action="?">
					<select name="schCol" style="width: 100px; height: 28px;">
						<option value="ctitle">과목 명</option>
						<option value="cname">강사명</option>
						<option value="ccode">과목 코드</option>
					</select> <input type="text" name="ctitle"
						style="height: 25px; margin-top: 9px;" /><input type="submit"
						value="검색" style="height: 28px; margin-left: 4px;" />
				</form>
			</div>
		</div>
		<!-- 검색@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->


		<div class="container" style="width: 100%">
			<div class="row">
				<table class="points_table" style="width:100%;">
					<thead>
						<tr>

							<th class="col-xs-4">과정 명</th>
							<th class="col-xs-1">강사 명</th>
							<th class="col-xs-1">강사 id</th>
							<th class="col-xs-4">과정 기간</th>
							<th class="col-xs-1">요일</th>
							<th class="col-xs-1">시간</th>

						</tr>
					</thead>
					<tbody class="points_table_scrollbar">
						<c:forEach items="${data }" var="row" varStatus="status">

							<c:choose>
								<c:when test="${status.index%2==0}">
									<tr class="odd" style="text-align: center">
								</c:when>
								<c:otherwise>
									<tr class="even" style="text-align: center">
								</c:otherwise>
							</c:choose>

							<td class="col-xs-4"><a
								href="course_Detail?ccode=${row.ccode }&mypage=true">${row.ctitle}</a></td>
							<td class="col-xs-1">${row.cname }</td>
							<td class="col-xs-1">${row.cid}</td>
							<td class="col-xs-4">${row.cstart}&nbsp&nbsp~&nbsp&nbsp${row.cfinish}</td>
							<td class="col-xs-1">${row.cday}</td>
							<td class="col-xs-1">${row.ctime}</td>
							</tr>
						</c:forEach>


					</tbody>
				</table>
			</div>
		</div>

<hr size=1px color="#ddd">	
	<a href="../">뒤로 가기</a>
	</div>
</body>
</html>
