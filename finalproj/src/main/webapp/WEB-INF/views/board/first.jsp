<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<div id="wrap">

<div class="container" style="width: 100%">
	<div class="row">
		<table class="points_table">
			<thead>
				<tr>
				<th class="col-xs-6">QnA</th>
				<th class="col-xs-3">
					<a href="/mvc/board/qnaList">전체보기</a>
				</th>
			</tr>
		</thead>
		<tbody class="points_table_scrollbar">
		<c:forEach var="qq" items="${data }" varStatus="no">
			<c:if test="${no.index<3}">
				<c:choose>
					<c:when test="${status.index%2==0}">
						<tr class="odd" style="text-align: center">
					</c:when>
					<c:otherwise>
						<tr class="even" style="text-align: center">
					</c:otherwise>
				</c:choose>
				
					<td class="col-xs-4"><a href="board/qnaDetail?id=${qq.id }">${qq.title }</a></td>
					<td class="col-xs-4">${qq.reg_date }</td>
					</tr>
			</c:if>
			</c:forEach>
		</tbody>
	</table>
</div>
</div>
</div>

<div class="container" style="width: 100%">
	<div class="row">
		<table class="points_table">
			<thead>
				<tr>
				<th class="col-xs-6">공지</th>
				<th class="col-xs-3">
					<a href="/mvc/board/noticeList">전체보기</a>
				</th>
			</tr>
		</thead>
		<tbody class="points_table_scrollbar">
		<c:forEach var="qq" items="${data2 }" varStatus="no">
			<c:if test="${no.index<3}">
				<c:choose>
					<c:when test="${status.index%2==0}">
						<tr class="odd" style="text-align: center">
					</c:when>
					<c:otherwise>
						<tr class="even" style="text-align: center">
					</c:otherwise>
				</c:choose>
				
					<td class="col-xs-4"><a href="board/noticeDetail?id=${qq.id }">${qq.title }</a></td>
					<td class="col-xs-4">${qq.reg_date }</td>
					</tr>
			</c:if>
			</c:forEach>
		</tbody>
	</table>
</div>
</div>
</div>

<div class="container" style="width: 100%">
	<div class="row">
		<table class="points_table">
			<thead>
				<tr>
				<th class="col-xs-6">후기</th>
				<th class="col-xs-3">
					<a href="/mvc/board/reviewList">전체보기</a>
				</th>
			</tr>
		</thead>
		<tbody class="points_table_scrollbar">
		<c:forEach var="qq" items="${data3 }" varStatus="no">
			<c:if test="${no.index<3}">
				<c:choose>
					<c:when test="${status.index%2==0}">
						<tr class="odd" style="text-align: center">
					</c:when>
					<c:otherwise>
						<tr class="even" style="text-align: center">
					</c:otherwise>
				</c:choose>
				
					<td class="col-xs-4"><a href="board/reviewDetail?id=${qq.id }">${qq.title }</a></td>
					<td class="col-xs-4">${qq.reg_date }</td>
					</tr>
			</c:if>
			</c:forEach>
		</tbody>
	</table>
</div>
</div>
</div>
</body>
</html>