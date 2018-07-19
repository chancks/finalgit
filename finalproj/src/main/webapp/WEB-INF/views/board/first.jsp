
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


<head>


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


#wrap{
	background-color: navy;
}



.points_table{
	background-color: red;
	width:300px;
	float:left;
}

</style>

<title>Insert title here</title>
</head>
<body>



<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">

        <div class="item active">
          <img src="https://img.fmnation.net/files/attach/images/425025/379/363/001/87b0f6113ec581c0751bf4abe49fa221.jpg" alt="Chania" width="100%" height="100%">
          <div class="carousel-caption">
            <h3>사나 모모</h3>
            <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
          </div>
        </div>

        <div class="item">
          <img src="https://pbs.twimg.com/media/DIFyCreV0AAUuU_.jpg" alt="Chania" width="100%" height="100%">
          <div class="carousel-caption">
            <h3>쯔위</h3>
            <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
          </div>
        </div>
        <div class="item">
          <img src="https://i.ytimg.com/vi/xtR726nuBs0/maxresdefault.jpg" alt="Chania" width="100%" height="100%">
          <div class="carousel-caption">
            <h3></h3>
            <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
          </div>
        </div>
        <div class="item">
          <img src="https://i.ytimg.com/vi/2cKA6e3JK98/maxresdefault.jpg" alt="Chania" width="100%" height="100%">
          <div class="carousel-caption">
            <h3>미나</h3>
            <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
          </div>
        </div>

    

      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>





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
				
					<td class="col-xs-4">${qq.title }</td>
					<td class="col-xs-4">${qq.reg_date }</td>
					</tr>
			</c:if>
			</c:forEach>
		</tbody>
	</table>
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
				
					<td class="col-xs-6">${qq.title }</td>
					<td class="col-xs-3">${qq.reg_date }</td>
					</tr>
			</c:if>
			</c:forEach>
		</tbody>
	</table>
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
				
					<td class="col-xs-6">${qq.title }</td>
					<td class="col-xs-3">${qq.reg_date }</td>
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