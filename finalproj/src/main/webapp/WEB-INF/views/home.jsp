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

<html>


<style>
@media screen and (max-width : 380px) {
	table{
		font-size: 10px;
		width:320;
	}
	
	#background {
		width: 360px;
	}
	#hight_top {
		width: 360px;
		height: 50px;
	}
	#logo {
		width: 100px;
		height: 35px;
		margin-top: 7px;
		margin-left: 10px;
		/* background-color: fuchsia; */
		float: left;
		background-image: url('https://blogfiles.pstatic.net/MjAxODA3MjBfMjcy/MDAxNTMyMDQ1MjcwMzcx.gmBZfnmfRQRy51Awui_CDEe5pTFpZdC2nn8MJ0CuANEg.CkW2MkV5n9hYFco3fs-Uvar3Z1JLKu8r-2U9yDT82kwg.PNG.dkcktksvkfkd/ll.png');
		background-size: 100%;
		cursor: pointer;
	}
	#login {
		margin-top: 20px;
		/* 	margin-right: 20px; 
		background-color : fuchsia; */
		float: right;
		font-size: 10px;
	}
	#btn {
		width: 50px;
		font-size: 10px;
	}
	#top_menu {
		width: 380px;
		height: 30px;
		/* 	border: blue 1px solid; */
		/* 	position: relative; */
		text-align: center;
	}
	#main_rap {
		width: 360px;
		/* background-color: #FFC6C6; */
		/* border: pink 1px solid; */
	}
	#sub_menu {
		float: left;
		width: 20px;
		height: 30px;
	/* 	background-color: pink; */
		/* 
	background-color: pink; */
		/* border: red 1px solid; */
	}
	#main {
		margin-left: 40px;
		width: 360px;
		/* 	border: blue 1px solid; */
		/* 	position: relative; */
		/* background-color: #fff; */
	}
	#bottom {
		bottom: 0px;
		width: 100%;
		border-bottom: 1px inset gray;
		font-size: 10px;
	}
}
@media screen and (min-width : 380px) {
	#background {
	}
	#hight_top {
		width: 1010px;
		height: 100px;
	}
	#logo {
		width: 275px;
		height: 90px;
		margin-left: 370px;
	/* 	background-color: fuchsia; */
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
		width: 1010;
		height: 50px;
		/* 	border: blue 1px solid; */
		/* 		position: relative; */
		text-align: center;
	}
	#main_rap {
		width: 1010px;
	
		/* background-color: #FFC6C6; */
		/* border: pink 1px solid; */
	}
	#sub_menu {
		width: 140px;
		float: left;
		/* 
	background-color: pink; */
		/* border: red 1px solid; */
	}
	#main {
		margin-left: 140px;
		width: 870px;
		/* 	border: blue 1px solid; */
		/* 	position: relative; */
		/* background-color: #fff; */
	}
	#bottom {
		width: 1024;
		border-bottom: 1px inset #ddd;
	}
}
</style>
<title>YAHAJA</title>

<body>
	<div id="background">

		<div id="hight_top">

			<div id="logo" onclick="location.href='/mvc/'"></div>



			<div id="login">
				<c:choose>
					<c:when test="${id!=null }">
            ${id } 님 반갑습니다.
            
            <input id="btn" type="button"
							onclick="location.href='/mvc/manager/logout'" value="로그아웃">
						<c:choose>
							<c:when test="${grade eq 'student' }">
								<input type="button" id="btn"
									onclick="location.href='/mvc/Bs/timetable?mypage=true'"
									value="마이페이지">
							</c:when>
							<c:when test="${grade eq 'teacher' }">
								<input type="button" id="btn"
									onclick="location.href='/mvc/jun_List/p_Course_List?mypage=true'"
									value="마이페이지"> 
							</c:when>
							<c:when test="${grade eq 'administ' }">
								<input type="button" id="btn"
									onclick="location.href='/mvc/Bs/memberlist?mypage=true'"
									value="마이페이지">
							</c:when>
							<c:otherwise> 
								<input type="button" id="btn"
									onclick="location.href='/mvc/Bs/memberlist?mypage=true'"
									value="마이페이지"> 
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>  로그인 후 이용하세요     .
						<input id="btn" type="button"
							onclick="location='/mvc/manager/loginf'" value="로그인">
						<input id="btn" type="button"
							onclick="location='/mvc/manager/join?jgrade=student'" value="회원가입">
					</c:otherwise>
				</c:choose>
			</div>
		</div>


		<div id="top_menu">

			<nav class="navbar navbar-default navbar-static-top navbar-inverse"
				role="navigation">

				<div class="container-fluid" >
					<div class="navbar-header"  >
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navbar-menu">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<!--         <a href="/" class="navbar-brand">야하자</a> -->
					</div>
					<div id="navbar-menu"
						class="collapse navbar-collapse navbar-right">
						<ul class="nav navbar-nav ">
							
		<!-- 					
							<li class="hidden-md "><a href="      ">  &nbsp; &nbsp;
							   		</a></li>
							
							<li class="hidden-md "><a href="      ">  &nbsp; &nbsp;
									</a></li>
							 
							<li class="hidden-md "><a href="      ">  &nbsp; &nbsp;
									</a></li>
							
							<li class="hidden-md "><a href="       ">   &nbsp; &nbsp;
									</a></li>
							 -->
							
							
							<li class="hidden-sx "><a href="/mvc/Bs/academyinfo">학원
									소개</a></li>
							<li class="hidden-sx "><a href="/mvc/manager/teacherinfo">강사
									소개</a></li>
							<li class="hidden-sx "><a href="/mvc/Bs/courseinfo">과목
									소개</a></li>
							<li class="hidden-sx"><a href="/mvc/board/qnaList">고객
									센터</a></li>


						</ul>
					</div>
				</div>
		</div>

		<hr size=2px color="#8C8C8C">
		<!-- #ddd -->


		<div id="main_rap" >


			<div id="sub_menu" >
				<c:if test="${param.mypage!=null ||mypage!=null }">
					<jsp:include page="menu/menu.jsp" />
				</c:if>
			</div>


			<div id="main" >
				<jsp:include page="${service }/${main }.jsp" />
			</div>

		</div>
		
<!-- 			<hr size=2px color=" ">
 -->
		<div id="bottom" align="center" ><!--  style="	background-color: yellow;" -->
			<small>
			COPYRIGHT ⓒ 2018 YAHAJA CO, LTD. ALL RESERVED<br>
			사업자등록번호 104-81-59383 통신판매업신고번호 중구 065325 야하자㈜<br>
			서울특별시 종로구 율곡로10길 105 디아망 401호(봉익동 10-1 디아망 401호)<br> 
			TEL: 070-8240-3211 FAX: 02-777-5407<br>
			야하자 정책  및 약관/회사소개/인재채용/제휴/제안/이용약관/개인정보처리방침청/소년보호정책/ⓒ 2018 YAHAJA<br>
			</small>
		</div>
	</div>
</body>
</html>