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
<div>
<jsp:useBean id="sysdate" class="java.util.Date"/>
<fmt:formatDate value="${sysdate }" pattern="yyyy" var="sysdate"/>
<c:choose>
	<c:when test="${param.name eq 'course' }">
		<a href = "/mvc/Bs/totpay?mypage=true">전체</a>
		<a href = "/mvc/Bs/totpay?mypage=true&name=date&schYear=${sysdate }">연별,월별</a>
	</c:when>
	<c:when test="${param.name eq 'date' }">
		<a href = "/mvc/Bs/totpay?mypage=true">전체</a>
		<a href = "/mvc/Bs/totpay?mypage=true&name=course">과목별</a>
	</c:when>
	<c:otherwise>
		<a href = "/mvc/Bs/totpay?mypage=true&name=course">과목별</a>
		<a href = "/mvc/Bs/totpay?mypage=true&name=date&schYear=${sysdate }">연별,월별</a>
	</c:otherwise>
</c:choose>

</div>
<div>
<table border="">
<c:choose>
	<c:when test="${param.name eq 'course' }">
		<tr>
			<td>과정명</td>
			<td>과목코드</td>
			<td>수강신청인원</td>
			<td>결제인원</td>
			<td>결제금액</td>
		</tr>
		<c:forEach var="pay" items="${data }" >
		<tr>		
			<td class="col-xs-1">${pay.rtitle }</td>
			<td class="col-xs-1">
			<a href="/mvc/jun_List/p_Astudent_List?rcode=${pay.rcode }&mypage=true">${pay.rcode }</a>
			</td>
		<c:forEach var="pay2" items="${data2 }">
		<c:if test="${pay.rcode eq pay2.rcode }">
			<td class="col-xs-1">${pay2.tot }명</td>
		</c:if>
		</c:forEach>
			<td class="col-xs-2">${pay.tot }명</td>
			<td class="col-xs-2">${pay.tot*30 }만원</td>
		</tr>
	</c:forEach>
</c:when>
<c:when test="${param.name eq 'date' }">
	<form action="?">
		<input type="hidden" value='true' name="mypage"/>
		<input type="hidden" value='date' name="name"/>
	<tr>
		<td>
			<select name="schYear"  >
				<c:forEach var="yy" begin="${sysdate-10 }" end="${sysdate-1 }">
					<option value="${yy }">${yy }</option>
					<c:if test="${sysdate eq yy+1 }">
						<option value="${yy+1 }" selected="selected">${yy+1 }</option>
					</c:if>
				</c:forEach>
			</select>
		</td>
		<td>
			<input class="btn btn-default" type="submit" value="검색">
		</td>
	</tr>
	</form>
	<c:forEach var="mm" items="${data }" begin="0" end="11" varStatus="no">
	<tr>
	<td>${no.index+1 }월</td>
	<td>${mm }만원</td>
	</tr>
	</c:forEach>
</c:when>
<c:otherwise>
	<c:forEach var="pay" items="${data }" >
		<tr>		
			<td class="col-xs-1">
				<a href="/mvc/jun_List/astudent_Course_List?rid=${pay.cpid }&mypage=true">${pay.cpid }</a>
			</td>
			<td class="col-xs-2">${pay.cpprice }</td>
			<td class="col-xs-2">
				<fmt:formatDate value="${pay.cpdate }" pattern="yyyy-MM-dd" />
			</td>
		</tr>
	</c:forEach>
</c:otherwise>
</c:choose>
</table>
</div>
</body>
</html>