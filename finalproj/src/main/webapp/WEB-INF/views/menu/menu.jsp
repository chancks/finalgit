
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
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<html>



<style>
@import
	url(http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css)
	;

body {
	margin-top: 20px;
}

.fa-fw {
	width: 15px;
}

.z {
	background-color: #FBFBFB;
	color: black;
}
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>






	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<ul class="nav nav-pills nav-stacked" style="margin-left: -15px;">
					<!-- style="margin-left:-58px;" -->
					<li class="active"><a href="#"
						style="background-color: #353535; width: 140px"><i
							class="fa fa-home fa-fw"></i>Home</a></li>


					<c:choose>
						<c:when test="${grade eq '학생' }">
							<!-- 학생  -->
							<li><a class="z" href="/mvc/manager/myinfo?mypage=true"
								style="width: 140px"><i class="fa fa-table fa-fw"></i>내 정보</a></li>

							<li><a class="z"
								href="/mvc/Bs/registerfc?mypage=true&page=1"
								style="width: 140px"><i class="fa fa-table fa-fw"></i>수강 신청</a></li>

							<li><a class="z" href="/mvc/Bs/timetable?mypage=true"
								style="width: 140px"><i class="fa fa-table fa-fw"></i>시간표</a></li>


						</c:when>

						<c:when test="${grade eq '강사' }">
							<!-- 강사 -->

							<li><a class="z" href="/mvc/manager/myinfo?mypage=true"
								style="width: 140px"><i class="fa fa-table fa-fw"></i>내 정보</a></li>

							<li><a class="z"
								href="/mvc/jun_List/p_Course_List?cid=${id}&mypage=true"
								style="width: 140px"><i class="fa fa-table fa-fw"></i>내 강의</a></li>

							<li><a class="z" href="/mvc/Bs/timetable?mypage=true"
								style="width: 140px"><i class="fa fa-table fa-fw"></i>시간표</a></li>

						</c:when>



						<c:otherwise>
							<!-- 관리자,행정 -->
							<c:if test="${id eq 'admin' }">
								<li><a class="z"
									href="/mvc/manager/join?jgrade=행정&mypage=true"
									style="width: 140px"><i class="fa fa-table fa-fw"></i>행정직
										등록</a></li>
							</c:if>
							<c:if test="${grade eq '행정' || id ne 'admin' }">
								<li><a class="z"
									href="/mvc/manager/myinfo?aid=${id}&mypage=true"
									style="width: 140px"><i class="fa fa-list-alt fa-fw"></i>내
										정보</a></li>
							</c:if>

							<li><a class="z"
								href="/mvc/jun_List/course_register?mypage=true"
								style="width: 140px"><i class="fa fa-list-alt fa-fw"></i>과목 등록</a></li>
							<li><a class="z"
								href="/mvc/manager/join?jgrade=강사&mypage=true"
								style="width: 140px"><i class="fa fa-file-o fa-fw"></i>강사 등록</a></li>
							<li><a class="z"
								href="/mvc/jun_List/course_List?mypage=true"
								style="width: 140px"><i class="fa fa-tasks fa-fw"></i>과목 리스트</a></li>
							<li><a class="z"
								href="/mvc/jun_List/astudent_List?mypage=true"
								style="width: 140px"><i class="fa fa-calendar fa-fw"></i>학생 리스트</a></li>
							<li><a class="z"
								href="/mvc/jun_List/professor_List?mypage=true"
								style="width: 140px"><i class="fa fa-book fa-fw"></i>강사 리스트</a></li>
							<li><a class="z"
								href="/mvc/Bs/totpay?mypage=true?mypage=true"
								style="width: 140px"><i class="fa fa-pencil fa-fw"></i>결제 내역</a></li>
						</c:otherwise>

					</c:choose>





				</ul>
			</div>
		</div>
	</div>




</body>
</html>




