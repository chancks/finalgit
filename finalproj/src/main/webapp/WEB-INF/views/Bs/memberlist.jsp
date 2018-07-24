<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="../resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>
<style>


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

<title>회원리스트</title>
</head>
<body>
<div id="legend">
	<legend>회원 리스트</legend>
</div>
<div id="wrap">

<div class="container" style="width: 100%">
	<div class="row">
		<table class="points_table table-hover" style="width:100%">
			<thead>
				<tr>
				<th class="col-xs-2">id</th>
				<th class="col-xs-2">이름</th>
				<th class="col-xs-3">이메일</th>
				<th class="col-xs-3">핸드폰</th>
				<th class="col-xs-1">등급</th>
				<th class="col-xs-1">삭제</th>
			</tr>
		</thead>
		<tbody class="points_table_scrollbar">
		
		<c:forEach var="mem" items="${data }">
				<c:if test="${mem.agrade ne 'admin' }">
					<tr style="text-align: center">
						<c:choose>
							<c:when test="${status.index%2==0}">
								<tr class="odd" style="text-align: center">
							</c:when>
							<c:otherwise>
								<tr class="even" style="text-align: center">
							</c:otherwise>
						</c:choose>
						<td class="col-xs-2">
							<a href="/mvc/manager/myinfo?aid=${mem.aid }&mypage=true">${mem.aid }</a>
						</td>
						<td class="col-xs-2">${mem.aname }</td>
						<td class="col-xs-3">${mem.aemail }</td>
						<td class="col-xs-3">${mem.aphone }</td>
						<td class="col-xs-1">${mem.agrade }</td>
				<c:choose>
					<c:when test="${(grade eq 'administ' && mem.agrade eq 'administ') or mem.agrade eq 'withdrawal' }">
					</c:when>
					<c:otherwise>
						<td class="col-xs-1"><a href="/mvc/manager/delete?aid=${mem.aid }">삭제</a></td>
					</c:otherwise>
				</c:choose>
				</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>
	<div class="text-center">
		<c:if test="${startPage >1}">
		<a href="registerfc?mypage=true&page=1">[처음]</a>
		<a href="registerfc?mypage=true&page=${data3.startPage-1}"><</a>
	</c:if>
	<c:forEach var="i" begin="${data3.startPage }" end="${data3.endPage }">
		<c:choose>
			<c:when test="${i==data3.page }">
				[${i }]
			</c:when>
			<c:otherwise>
				<a href="registerfc?mypage=true&page=${i }">${i }</a>				
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${data3.endPage<data3.totalPage }">
		<a href="registerfc?mypage=true&page=${data3.endPage+1}">></a>
		<a href="registerfc?mypage=true&page=${data3.totalPage }">[마지막]</a>
	</c:if>
	</div>
</div>
</div>	
</div>
</body>
</html>