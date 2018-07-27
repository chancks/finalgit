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
	width: 100%;
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

<jsp:useBean id="sysdate" class="java.util.Date"/>
<fmt:formatDate value="${sysdate }" pattern="yyyy" var="sysdate"/>



<div id="legend">
	<legend>정산 페이지</legend>
</div>

<div style="border: 0.5px silver solid; ">
<div class="container" style="width: 100%">
	<div class="row">



					<c:choose>
						<c:when test="${param.name eq 'course' }">
						<div id="legend">
						<legend><small>과목 정산</small></legend>
						</div>
						<table class="points_table table-hover" style="width: 100%">
						
							<thead>
								<tr>
									<th class="col-xs-3">과정명</th>
									<th class="col-xs-1">강사명</th>
									<th class="col-xs-2">과목코드</th>
									<th class="col-xs-2">수강신청인원</th>
									<th class="col-xs-2">결제인원</th>
									<th class="col-xs-2">결제금액</th>
								</tr>
							</thead>
							<c:forEach var="pay" items="${data }">
								<tr>
									<td class="col-xs-3"><a
										href="/mvc/jun_List/p_Astudent_List?rcode=${pay.rcode }&mypage=true">${pay.rtitle }</a></td>
									<td class="col-xs-1">${pay.rname }</td>
									<td class="col-xs-2">${pay.rcode }</td>
							
									<c:forEach var="pay2" items="${data2 }">
										<c:if test="${pay.rcode eq pay2.rcode }">
											<td class="col-xs-2">${pay2.tot }명</td>
										</c:if>
									</c:forEach>
									<td class="col-xs-2">${pay.tot }명</td>
									<td class="col-xs-2">${pay.tot*30 }만원</td>
								</tr>
							</c:forEach>
							
							</table>
						</c:when>
						
						
						
						
						
						<c:when test="${param.name eq 'date' }">
						<div id="legend">
						<legend><small>연도별 정산</small></legend>
						</div>
						
							<table class="table table-bordered" style="width: 100%">
							
							
					
								<tr style="background-color:#232323; color: #A6A6A6 ">
									<c:forEach var="mm" items="${data }" begin="0" end="11"
										varStatus="no">

										<td style="height: 40px;">${no.index+1 }월</td>

									</c:forEach>
								</tr>
	

							<tr>
								<c:forEach var="mm" items="${data }" begin="0" end="11"
									varStatus="no">


									<td style="height: 70px;">
									<br>${mm }만</td>

								</c:forEach>
							</tr>

							</table>

							
							
							
							<div style="background-color:; height: 30px; width:48%; float:left;">총 계 : ${yearTot }만원</div>
							<div style="background-color:; height: 30px; width:30%; float:left;"></div>	
							<div style="background-color:; height: 30px; width:22%;   margin-left: 78%;">
							
							
							<form action="?">
								<input type="hidden" value='true' name="mypage" /> <input
									type="hidden" value='date' name="name" />
									<select name="schYear" style="width: 100px;">
											<c:forEach var="yy" begin="${sysdate-10 }"
												end="${sysdate }">
												<c:choose>
													<c:when test="${param.schYear eq yy }">
														<option value="${yy }" selected="selected">${yy }년도</option>
													</c:when>
													<c:otherwise>
														<option value="${yy }">${yy }년도</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
									</select>
									<input class="btn btn-default" type="submit"
										value="검색">
				
							</form>
							</div>
							
							
							
						

						</c:when>
						
						
						
						
						
						<c:otherwise>
						
						<div id="legend">
						<legend><small>학생별 정산</small></legend>
						</div>
						
						<table class="points_table table-hover" style="width: 100%">
						
							<thead>
								<tr >
									<th class="col-xs-3">학생 ID</th>

									<th class="col-xs-4">총 결제 금액</th>
									<th class="col-xs-3">결제 일</th>

								</tr>
							</thead>
							<c:forEach var="pay" items="${data }">
								
								<tr>
									<td class="col-xs-3"><a
										href="/mvc/jun_List/astudent_Course_List?rid=${pay.cpid }&mypage=true">${pay.cpid }</a>
									</td>

									<td class="col-xs-4">${pay.cpprice }</td>
									<td class="col-xs-3"><fmt:formatDate
											value="${pay.cpdate }" pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
							</table>
						</c:otherwise>
					</c:choose>
				

			</div>
</div>

<hr size=1px color="#ddd">	
	

</body>
</html>