
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


<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<html>


<style>

a:hover , a:focus{ text-decoration: none;}
ul{ margin: 0px; padding: 0px;}
ul li{ list-style-type: none;}
.clear{ clear: both;}
h3{ margin-bottom: 20px;}


/******Main navigation css start******/
.navigation{ background: #fb5353; position: relative;}  
.nav-ul li{ float: left;}
.nav-ul li a{ font-size: 16px; color: #fff; padding: 12px 25px; display: inline-block;}
.nav-ul li:hover a , nav ul li.active a{ background: #FFB2D9; color: #fff;}
/******Main navigation css end******/

@media only screen and (max-width: 760px){
.navigation{ background: none; position:relative;}
.menu_header{ padding: 0px 15px; background: #f2f2f2; z-index:2; border-bottom:1px solid #ddd;}
.menu_header span{ padding-top: 5px; display:inline-block;}
.menu_header button{ float:right;}
.baars{ display:inline-block; margin-right: 5px; vertical-align:middle;}
.baars .icon_bar{ width: 22px; height: 3px; margin-bottom:3px; background: #000; display: block; padding: 0px; transition: all 0.5s ease;}
.cross .icon_bar:first-child{ -webkit-transform: rotate(-45deg) translate(-4px, 5px); transform: rotate(-45deg) translate(-4px, 5px); opacity: 1;}
.cross .icon_bar{opacity: 0; color: #000;}
.cross .icon_bar:last-child{ -webkit-transform: rotate(45deg) translate(-2.5px, -5px); transform: rotate(45deg) translate(-2.5px, -5px); opacity: 1;}

.nav-ul{ left:-100%; position: absolute; top: 34px; width: 100%; transition: all 0.5s ease; background: #fb5353;}
.nav-ul.active{ left:0px; transition: all 0.5s ease;}
.nav-ul li{ float: none; border-bottom: 1px solid #323232;}
.nav-ul li a{display:block; padding: 10px 15px;}
.nav-ul li:hover a{ background: #FFB2D9; color: #fff;}
}

#background{
background-color: #FFEBFF;
}

#hight_top {
	/* border: red 1px solid; */
	width: 1024px;
	height: 100px;
	margin-left: 10%;
/* 	background: #FFEBFF; */
}

#logo {
	width: 275px;
	height: 90px;
	margin-left: 370px;
	background-color: fuchsia;
	float: left;
	background-image: url('${url }'); 
	background-size: 100%;  
	cursor: pointer;
}

#login {
	margin-top: 75px;
/* 	margin-right: 20px; 
	background-color : fuchsia; */
	float: right;

}

#top_menu {
	width: 1024px;
	height: 50px;
/* 	border: blue 1px solid; */
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
/* background-color: #FFC6C6; */
/* border: pink 1px solid; */
}

#sub_menu {
	width:100px;
	float: left;
	/* border: red 1px solid; */
}

#main {
	margin-left: 100px;
	width: 924px ;
/* 	border: blue 1px solid; */
	position: relative;
	/* background-color: #fff; */
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

			<div id="logo"  onclick="location.href='/mvc/'">
			
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


		<div id="top_menu">


			<div class="navigation" style="border-radius: 10px;">
				<nav>
					<div class="visible-xs menu_header">
						<span class="mobile_logo">Menu</span>
						<button class="btn menu_btn baars">
							<span class="icon_bar"></span> <span class="icon_bar"></span> <span
								class="icon_bar"></span>
						</button>
						<div class="clear"></div>
					</div>

					<ul class="nav-ul">
						<li style="border-radius: 10px;"><a href="#">학원 소개</a></li>
						<li style="border-radius: 10px;"><a href="#">강사 소개</a></li>
						<li style="border-radius: 10px;"><a href="/mvc/jun_List/course_List">과목 소개</a></li>
						<li style="border-radius: 10px;"><a href="/mvc/board/boardList">고객 센터</a></li>
						<div class="clear">
						</div>
					</ul>
				</nav>
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