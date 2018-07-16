<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>


<style>

#hight_top{
border: red 1px solid;
width: 100%;
height: 3%;
}

#top_menu{

width:100%;
height: 10%;
background-color: silver;
 position:relative;
}

#main{
 width: 50%; 
 margin-left: 25%; 
 position:relative;
}

#sub_menu{
width: 25%;
float: left;
background-color: green;
height: 50%;
}
.main_menu{


}

#bottom{
bottom:0px;
 width: 100%; height: 10%; 
 position: relative; 
-top:1%;
 border-bottom: 1px inset gray;
}



</style>

<head>
	<title>YAHAJA</title>
</head>
<body>
<div id="background">

		<div id="hight_top">

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
								onclick="location.href='/mvc/jun_List/p_Course_List?cid=${id}&mypage=true'"
										
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

		<div id="top_menu">
			<a href="/mvc/Bs/academyinfo">학원소개</a>
			
<<<<<<< HEAD
			<a href="">강사소개</a>
<!-- <<<<<<< HEAD -->
=======
			<a href="/mvc/manager/teacherinfo">강사소개</a>
<<<<<<< HEAD
			<a href="">과목소개</a>
			<a href="">고객센터</a>
=======
>>>>>>> branch 'master' of https://github.com/chancks/finalgit.git
			<a href="/mvc/jun_List/course_List">과목소개</a>
			<a onclick="location.href='/mvc/board/boardList'">고객센터</a>
<!-- >>>>>>> branch 'master' of https://github.com/chancks/finalgit.git -->
		</div>

		<div id="sub_menu">
			<c:if 	test="${param.mypage!=null || mypage!=null }">
				<jsp:include page="menu/menu.jsp"/>
			</c:if>
		</div>


		<div id="main"> 
			<jsp:include page="${service }/${main }.jsp"/>
		</div>
	<!-- <div style="width: 100%; height: 5%; border-bottom: 1px inset gray; position: relative;">
	</div>
	<div id="bottom">
	
	</div> -->
</div>
</body>
</html>