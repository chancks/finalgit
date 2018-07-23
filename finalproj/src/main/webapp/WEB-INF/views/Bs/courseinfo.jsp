
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 , 
user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
<link rel="stylesheet"
	href="../resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="../resources/bootstrap/js/bootstrap.min.js"></script>


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

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
<title>Insert title here</title>
</head>
<body>
	               <div id="legend">
	                 <legend>과목 소개</legend>
	               </div>


	<div id="wrap" style=" width:100%; height: 400px;">

		<div class="container" style="width: 100%">
			<div class="row">

				<c:choose>
					<c:when test="${data.size()==0 }">

					</c:when>
					<c:otherwise>
						<table class="points_table">
							<thead>
								<tr>
									<th class="col-xs-6">과목명</th>
									<th class="col-xs-1">강사</th>
									<th class="col-xs-2">시작일</th>
									<th class="col-xs-2">종료일</th>
								</tr>
							</thead>
							<tbody class="points_table_scrollbar">

								<c:forEach var="cc" items="${data }">
									<c:choose>
										<c:when test="${status.index%2==0}">
											<tr class="odd" style="text-align: center">
										</c:when>
										<c:otherwise>
											<tr class="even" style="text-align: center">
										</c:otherwise>
									</c:choose>
									<td class="col-xs-6"><a href="/mvc/jun_List/course_Detail?ccode=${cc.ccode }">${cc.ctitle }</a></td>
									<td class="col-xs-1">${cc.cname }</td>
									<td class="col-xs-2"><fmt:formatDate value="${cc.cstart }"
											pattern="yyyy-MM-dd" /></td>
									<td class="col-xs-2"><fmt:formatDate
											value="${cc.cfinish }" pattern="yyyy-MM-dd" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</body>
</html>