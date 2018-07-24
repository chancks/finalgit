<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
@media screen and (min-width:600px) {

}

@media screen and (max-width:600px) {

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
<title>정산</title>
</head>
<body>


	<div id="legend">
	<legend>결재 내역</legend>
</div>
<div id="wrap">

<div class="container" style="width: 100%">
	<div class="row">
		<table class="points_table">
			<thead>
				<tr>
					<th class="col-xs-1">학생 id</th>
					<th class="col-xs-2">과목명</th>
					<th class="col-xs-1">강사</th>
					<th class="col-xs-2">과목코드</th>
					<th class="col-xs-2">수강신청일</th>
					<th class="col-xs-1">결제</th>
					<th class="col-xs-2">결제일</th>
				</tr>
			</thead>
		<tbody class="points_table_scrollbar">
		
		<c:forEach var="pay" items="${data }">
			<c:choose>
				<c:when test="${status.index%2==0}">
					<tr class="odd" style="text-align: center">
				</c:when>
				<c:otherwise>
					<tr class="even" style="text-align: center">
				</c:otherwise>
			</c:choose>
				
					<td class="col-xs-1">
						<a href="/mvc/manager/myinfo?aid=${pay.rid }&mypage=true">${pay.rid }</a>
					</td>
					<td class="col-xs-2">${pay.rtitle }</td>
					<td class="col-xs-1">${pay.rname }</td>
					<td class="col-xs-2">${pay.rcode }</td>
					<td class="col-xs-2">
					<fmt:formatDate value="${pay.rdate }" pattern="yyyy-MM-dd" />
					</td>
					<td class="col-xs-1">${pay.rpay }</td>
					<c:forEach var="cc" items="${card }" varStatus="no">
						<c:if test="${pay.rpay eq '결제' and pay.rid eq cc.cpid}">
						<td class="col-xs-2">
							<fmt:formatDate value="${cc.cpdate }" pattern="yyyy-MM-dd" />
						</td>
						</c:if>
					</c:forEach>
				</tr>
		</c:forEach>
				<tr>
				<td class="col-xs-6">
				</td>	
					<td class="col-xs-6">
						총 수강신청 수: ${data.size() }&nbsp;&nbsp;&nbsp;미 결제 수: ${tot }
					</td>
				</tr>
		</tbody>
	</table>
</div>
</div>
</div>
</body>
</html>