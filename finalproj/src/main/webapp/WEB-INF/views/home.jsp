
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta name="viewport"content="width=device-width, initial-scale=1.0 , 
user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../resources/bootstrap/js/bootstrap.min.js"></script>


<html>


<style>
#hight_top {
	border: red 1px solid;
	width: 1024px;
	height: 100px;
	margin-left: 10%;
}

#logo {
	width: 190px;
	height: 60px;
	margin-top: 20px;
	margin-left: 20px;
	background-color: fuchsia;
	float: left;
}

#login {
	margin-top: 60px;
	margin-right: 20px; background-color : fuchsia;
	float: right;
	background-color: fuchsia;
}

#top_menu {
	width: 1024px;
	height: 50px;
	border: blue 1px solid;
	margin-left: 10%;
	position: relative;
	text-align:center; 

}

#menu_rap{
	width: 450px;
	height: 40px;
	border: black 1px solid;
	display:inline-block; 
	margin-top: 5px;
}

#menu1{
	background-color:gray;

     float:left;
}
#menu2{
background-color:gray;

     float:left;
}

#menu3{
background-color:gray;

     float:left;
}

#menu4{
background-color:gray;

     float:left;
}
.menu{
margin: 6px;
width: 100px;
height: 30px;
}

#main_rap{
margin-left: 10%;
width:1024px;

border: pink 1px solid;
}

#sub_menu {
	width:100px;
	float: left;
	border: red 1px solid;
}

#main {
	margin-left: 100px;
	width: 924px ;
	border: blue 1px solid;
	position: relative;
}



#bottom {
	bottom: 0px;
	width: 100%;
	border-bottom: 1px inset gray;
}
</style>

<head>
<title>Home</title>
</head>
<body>
	<div id="background">

		<div id="hight_top">


			<div id="logo">
				로고 왜 안들어와
				<img src="resources/img/logo.png"
				onclick="location.href='/mvc/'">
			</div>
			


			<div id="login">
				<c:choose>
					<c:when test="${id!=null }">
            ${id } 님 반갑습니다.
            
            <input type="button"
							onclick="location.href='/mvc/manager/logout'" value="로그아웃">
						<c:choose>
							<c:when test="${grade eq '학생' }">
								<input type="button"
									onclick="location.href='/mvc/Bs/timetable?mypage=true'"
									value="마이페이지">
							</c:when>
							<c:when test="${grade eq '강사' }">
								<input type="button"
									onclick="location.href='/mvc/jun_List/p_Course_List?mypage=true'"
									value="마이페이지">
							</c:when>
							<c:when test="${grade eq '행정' }">
								<input type="button"
									onclick="location.href='/mvc/Bs/timetable?mypage=true'"
									value="마이페이지">
							</c:when>
							<c:otherwise>
								<input type="button"
									onclick="location.href='/mvc/manager/memberlist?mypage=true'"
									value="마이페이지">
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<input type="button" onclick="location='/mvc/manager/loginf'"
							value="로그인">
						<input type="button" onclick="location='/mvc/manager/join'"
							value="회원가입">
					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<hr size=2px color="gray">

		<div id="top_menu">

			<div id="menu_rap" class="btn-group">
				<!-- 	
				<button class ="btn">학원 소개</btn>
				<button class ="btn">강사 소개</btn>
				<button class ="btn">과목 소개</btn>
				<button class ="btn">고객 센터</btn>
  -->


				<div id="menu1" class="menu">
					<a href="/mvc/Bs/academyinfo">학원소개</a>
				</div>


				<div id="menu2" class="menu">
					<a href="">강사소개</a>
				</div>

				<div id="menu3" class="menu">
					<a href="/mvc/jun_List/course_List">과목소개</a>
				</div>

				<div id="menu4" class="menu">
					<a onclick="location.href='/mvc/board/boardList'">고객센터</a>
				</div>
			</div>

		</div>

		<hr size=2px color="gray"> <!-- #ddd -->


		<div id="main_rap">
			<div id="sub_menu">
				<c:if test="${param.mypage!=null }">
					<jsp:include page="menu/menu.jsp" />
				</c:if>
			</div>


			<div id="main">
				<jsp:include page="${service }/${main }.jsp" />
			</div>

		</div>

		<div id="bottom" align="center">
			<small>
			Creators 크리에이터스몰비즈니스<br>
			Partners 비즈니스 파트너 안내비즈니스 · 광고스토어 개설지역업체 등록<br> Developers 네이버
			개발자센터오픈 API오픈소스네이버 D2네이버 랩스<br> 네이버 정책 및
			약관/회사소개/인재채용/제휴/제안/이용약관/개인정보처리방침청/소년보호정책/네이버 정책고객센터ⓒ NAVER Corp.
			</small>
		</div>
	</div>
</body>
</html>