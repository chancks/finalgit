
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


. li:hover a{ background: #FFB2D9; color: #fff;}
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



<div class="container" style=" height:50px; width:100%">
	<div class="row">
		<div class="span12">
            <div id="tab" class="btn-group" data-toggle="buttons-radio">


<c:choose>
	<c:when test="${grade eq '학생' }"><!-- 학생  -->
	
	
	
	<div id ="m" style="  margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/manager/myinfo?mypage=true'"><a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">내 정보</a></div>
	<div id ="m" style="  margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/Bs/registerfc?mypage=true&page=1'">	<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">수강신청</a></div>
	<div id ="m" style="  margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/Bs/timetable?mypage=true'">	<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">시간표</a></div>
	

		
	
	</c:when>
	
	<c:when test="${grade eq '강사' }"><!-- 강사 -->
	
	
	
    
	<div id ="m" style="  margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/manager/myinfo?mypage=true'">		<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">내 정보</a></div>
	<div id ="m" style="  margin-left: -20px; cursor: pointer;" 
				onclick="location.href='/mvc/jun_List/p_Course_List?cid=${id}&mypage=true'">		<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">내 강의</a></div>
	<div id ="m" style="  margin-left: -20px; cursor: pointer;" 
				onclick="location.href='/mvc/Bs/timetable?mypage=true'">		<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">시간표</a></div>
	

	
	</c:when>
	<c:otherwise><!-- 관리자,행정 -->
		<c:if test="${id eq 'admin' }">
		
		
		

	<div id ="m"  style="  margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/manager/join?jgrade=행정&mypage=true'">		<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">행정직 등록</a></div>
		

		
		</c:if>
		<c:if test="${grade eq '행정' || id ne 'admin' }">
	
	
	
	<div id ="m"  style="  margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/manager/myinfo?mypage=true'">		<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">내 정보</a></div>
			


		</c:if>
		

		
		
		
	<div id ="m" style="  margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/manager/join?jgrade=강사&mypage=true'">			<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">강사 등록</a></div>
	<div id ="m" style="  margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/jun_List/course_register?mypage=true'">		<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">과목 등록</a></div>
	<div id ="m" style="  margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/jun_List/course_List?mypage=true'">			<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">과목 리스트</a></div>
	<div id ="m" style=" margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/jun_List/astudent_List?mypage=true'">			<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">학생 리스트</a></div>
	<div id ="m" style="  margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/jun_List/professor_List?mypage=true'">			<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">강사 리스트</a></div>
	<div id ="m" style="  margin-left: -29px; cursor: pointer;" 
				onclick="location.href='/mvc/Bs/totpay?mypage=true?mypage=true'">			<a class="btn" data-toggle="tab" style="width: 100px; margin-bottom: 2px; background: #fb5353; color:#fff">결제내역</a></div>
	

	
	</c:otherwise>
</c:choose>


          
          </div> 
        </div>
    </div>
</div>
</body>
</html>




