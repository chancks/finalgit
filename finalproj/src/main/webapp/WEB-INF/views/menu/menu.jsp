
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

@media screen and (max-width : 380px) {

.z {
	background-color: #FBFBFB;
	color: black;
	width: 40px;
	font-size: 14px;
	height:40px;
}

.active{
	width:40px;
	font-size: 12px;
}


#ff{
font-size: 0px;
}


}
@media screen and (min-width : 380px) {

.z {
	background-color: #FBFBFB;
	color: black;
	width: 140px;
}
.active{
	width:140px;
	height:50px;
}

}


body {
	margin-top: 20px;
}

.fa-fw {
	margin-top:4px;
	float:left;
	width: 15px;
}

</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>






	<div class="container">
		<div class="row">
			<div class="col-md-1">
				<ul class="nav nav-pills nav-stacked"  style="margin-left: -15px;">
					<!-- style="margin-left:-58px;" -->
					<li class="active"><a href="/mvc/Bs/memberlist?mypage=true"
						style="background-color: #353535; height:40px"><i
							class="fa fa-home fa-fw"></i></a></li>


					<c:choose>
						<c:when test="${grade eq 'student' }">
							<!-- 학생  -->
							<li><a class="z" href="/mvc/manager/myinfo?mypage=true"
								><i class="fa fa-list fa-fw"></i><div id="ff">내 정보</div></a></li>

							<li><a class="z"
								href="/mvc/Bs/registerfc?mypage=true&page=1"
								><i class="fa fa-pencil fa-fw"></i><div id="ff">수강 신청</div></a></li>

							<li><a class="z" href="/mvc/Bs/timetable?mypage=true"
								><i class="fa fa-table fa-fw"></i><div id="ff">시간표</div></a></li>


						</c:when>

						<c:when test="${grade eq 'teacher' }">
							<!-- 강사 -->

							<li><a class="z" href="/mvc/manager/myinfo?mypage=true"
								><i class="fa fa-list fa-fw"></i><div id="ff">내 정보</div></a></li>

							<li><a class="z"
								href="/mvc/jun_List/p_Course_List?cid=${id}&mypage=true"
								><i class="fa fa-pencil fa-fw"></i><div id="ff">내 강의</div></a></li>

							<li><a class="z" href="/mvc/Bs/timetable?mypage=true"
								><i class="fa fa-table fa-fw"></i><div id="ff">시간표</div></a></li>

						</c:when>



						<c:otherwise>
							<!-- 관리자,행정 -->
							<c:if test="${id eq 'admin' }">
								<li><a class="z"
									href="/mvc/manager/join?jgrade=administ&mypage=true"
									><i class="fa fa-table fa-fw"></i><div id="ff">행정직
										등록</div></a></li>
							</c:if>
							<c:if test="${grade eq 'administ' || id ne 'admin' }">
								<li><a class="z"
									href="/mvc/manager/myinfo?aid=${id}&mypage=true"
									><i class="fa fa-list-alt fa-fw"></i><div id="ff">내
										정보</div></a></li>
							</c:if>
						
							<li><a class="z"
								href="/mvc/jun_List/course_register?mypage=true"
								><i class="fa fa-list-alt fa-fw"></i><div id="ff">과목 등록</div></a></li>
							
							<li><a class="z"
								href="/mvc/jun_List/course_List?mypage=true"
								><i class="fa fa-tasks fa-fw"></i><div id="ff">과목 리스트</div></a></li>
							
							
							
							
							
							
							
							<li class="active"><a 
						style="background-color: #353535; height:40px"><i
							class="fa fa-address-book-o fa-fw"></i>강사</a></li>
							
														
							<li><a class="z"
								href="/mvc/manager/join?jgrade=teacher&mypage=true"
								><i class="fa fa-file-o fa-fw"></i><div id="ff">강사 등록</div></a></li>
							
							<li><a class="z"
								href="/mvc/jun_List/professor_List?mypage=true"
								><i class="fa fa-book fa-fw"></i><div id="ff">강사 리스트</div></a></li>
							
							
							
							
							
							
							
							<li class="active"><a 
						style="background-color: #353535; height:40px"><i
							class="fa fa-address-book fa-fw"></i>학생</a></li>
							
							
							<li><a class="z"
								href="/mvc/jun_List/astudent_List?mypage=true"
								><i class="fa fa-calendar fa-fw"></i><div id="ff">학생 리스트</div></a></li>
							
						
								
						
						
						
								<li class="active"><a 
						style="background-color: #353535; height:40px"><i
							class="fa fa-address-book-o fa-fw"></i>결제</a></li>
							
							<jsp:useBean id="sysdate" class="java.util.Date"/>
							<fmt:formatDate value="${sysdate }" pattern="yyyy" var="sysdate"/>
							
							
							<li><a class="z"
								href="/mvc/Bs/totpay?mypage=true"
								><i class="fa fa-list-alt fa-fw"></i><div id="ff">학생별 정산</div></a></li>
							
							<li><a class="z"
								href="/mvc/Bs/totpay?mypage=true&name=course"
								><i class="fa fa-tasks fa-fw"></i><div id="ff">과목별 정산</div></a></li>
						
						
							<li><a class="z"
								href="/mvc/Bs/totpay?mypage=true&name=date&schYear=${sysdate }"
								><i class="fa fa-table fa-fw"></i><div id="ff">연도별 정산</div></a></li>
							
						
						</c:otherwise>

					</c:choose>





				</ul>
			</div>
		</div>
	</div>




</body>
</html>




