
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


.points_table thead {
	width: 100%;
}

.points_table tbody {
	height: 100%;
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
	height: 100%;
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

.container {
	width: 220px;
	float: left;
	height: 200px;
	margin: 15px;
	

}

.points_table {
	width: 100%;
	font-size: 13px;
	border: 1px inset #ddd; 
}


@media screen and (max-width : 380px) {
#mmm{
height:1000px;
width:100%;
}

}
@media screen and (min-width : 380px) {
#mmm{
height:660px;
width:760px;
}

}

</style>

<title>Insert title here</title>
</head>
<body>

	<div id="mmm">
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
					<img
						src="https://postfiles.pstatic.net/MjAxODA3MjBfODQg/MDAxNTMyMDY0OTk3Njk2.XO0jDCnRkUXhYHsyqQ9C8Hph7PGIPNkEbgqDJuD1-60g.X4X0b1M4FDMKPGiGOKPbRmSpov0T3aeTLZCIrOn4uscg.PNG.dkcktksvkfkd/nnnna3.png?type=w773"
						alt="Chania" width="100%" height="100%">
					<div class="carousel-caption">
						<h3>학원 전경</h3>
						<p>최고의 시설 및 학습 환경</p>
					</div>
				</div>

				<div class="item">
					<img src="https://postfiles.pstatic.net/MjAxODA3MjBfMjkz/MDAxNTMyMDY0OTY2OTU1.sZ0K8hE2nvY8RzXtAWeg10cD8m7KirVwg22zGnbG8Qkg.vYjPau8765RU0Lcn94jnBI4pAyu8Owqyf0cAWd-MyYQg.PNG.dkcktksvkfkd/ZZa2.png?type=w773"
						alt="Chania" width="100%" height="100%">
					<div class="carousel-caption">
						<h3>강의실</h3>
						<p>깔끔하고 쾌적한 강의실</p>
					</div>
				</div>
				<div class="item">
					<img src="https://postfiles.pstatic.net/MjAxODA3MjBfMTA5/MDAxNTMyMDY0OTY2OTM1.iIgNINS-WX67qC-QQSCL70KrEX3LdJpw7nTMsa6y2CQg.IFKwfBxRV9SxHZeLXB1zthxzvotGJWVFWBxOM9SIbtMg.PNG.dkcktksvkfkd/ZZa4.png?type=w773"
						alt="Chania" width="100%" height="100%">
					<div class="carousel-caption">
						<h3>자습 & 토론</h3>
						<p>자율적으로 공부가 가능한 독서실</p>
					</div>
				</div>
				<div class="item">
					<img src="https://postfiles.pstatic.net/MjAxODA3MjBfMTk4/MDAxNTMyMDY0OTY2ODYz.zG9JDZ5TFD916NqQGcHKqUpVjEbBbd0k73s8okdYYYAg.YISkrujE6Tt46PywnY3AzrJCzbXvVhHag2rP0tH9HLsg.JPEG.dkcktksvkfkd/nnnn%EC%BA%A1%EC%B2%98.JPG?type=w773"
						alt="Chania" width="100%" height="100%">
					<div class="carousel-caption">
						<h3>강사진</h3>
						<p>국내 최고의 강사진들로만 구성</p>
					</div>
				</div>

			</div>


			
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

	<hr size=2px color="#8C8C8C">

		<div id="wrap" style="border-bottom: 1px; height:200px;">

			<div class="container">
				<div class="row">
					<table class="points_table">
						<thead>
							<tr>
								<th class="col-xs-7" style="height:32px;">QnA</th>
								<th class="col-xs-5" style="height:32px;"><a href="/mvc/board/qnaList">전체보기</a>
								</th>
							</tr>
						</thead>
						<tbody class="points_table_scrollbar">
							<c:forEach var="qq" items="${data }" varStatus="no">
								<c:if test="${no.index<5}">
									<c:choose>
										<c:when test="${status.index%2==0}">
											<tr class="odd" style="text-align: center">
										</c:when>
										<c:otherwise>
											<tr class="even" style="text-align: center">
										</c:otherwise>
									</c:choose>

									<td class="col-xs-7" style="height:32px;"><a href="board/qnaDetail?id=${qq.id }">${qq.title}</a></td>
									<td class="col-xs-5" style="height:32px;">${qq.reg_date }</td>
									</tr>
								</c:if>
							</c:forEach>
							

						</tbody>
					</table>
				</div>
			</div>


			<div class="container">
				<div class="row">
					<table class="points_table">
						<thead>
							<tr>
								<th class="col-xs-7" style="height:32px;">공지</th>
								<th class="col-xs-5" style="height:32px;"><a href="/mvc/board/noticeList">전체보기</a>
								<!-- <a href="/mvc/board/noticeList">전체보기</a> -->
								</th>
							</tr>
						</thead>
						<tbody class="points_table_scrollbar">
							<c:forEach var="qq" items="${data2 }" varStatus="no">
								<c:if test="${no.index<5}">
									<c:choose>
										<c:when test="${status.index%2==0}">
											<tr class="odd" style="text-align: center">
										</c:when>
										<c:otherwise>
											<tr class="even" style="text-align: center">
										</c:otherwise>
									</c:choose>

									<td class="col-xs-7" style="height:32px;"><a href="board/noticeDetail?id=${qq.id }">${qq.title}</a></td>
									<td class="col-xs-5" style="height:32px;">${qq.reg_date }</td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>


			<div class="container">
				<div class="row">
					<table class="points_table">
						<thead>
							<tr>
								<th class="col-xs-7" style="height:32px;">후기</th>
								<th class="col-xs-5" style="height:32px;"><a href="/mvc/board/reviewList">전체보기</a>
								</th>
							</tr><!-- 
							<a href="/mvc/board/reviewList">전체보기</a> -->
						</thead>
						<tbody class="points_table_scrollbar">
							<c:forEach var="qq" items="${data3 }" varStatus="no">
								<c:if test="${no.index<5}">
									<c:choose>
										<c:when test="${status.index%2==0}">
											<tr class="odd" style="text-align: center">
										</c:when>
										<c:otherwise>
											<tr class="even" style="text-align: center">
										</c:otherwise>
									</c:choose>

									<td class="col-xs-7" style="height:32px;"><a href="board/reviewDetail?id=${qq.id }">${qq.title}</a></td>
									<td class="col-xs-5" style="height:32px;">${qq.reg_date }</td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>


		</div>

	</div>
</body>
</html>