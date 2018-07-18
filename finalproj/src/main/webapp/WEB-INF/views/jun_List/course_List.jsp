<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 , user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet"href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet"href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">


<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"src="../resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>


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

#a {
	float: left;
	background-color: gray;
	margin: 5px;
}

#search {
	margin-top: 60px;
}
</style>


<title>Insert title here</title>
</head>
<body>


<div class="container" style=" height:35px; width:100% ;" >
	<div class="row">
		<div class="span12">
            <div id="tab" class="btn-group" data-toggle="buttons-radio">
             
             <div style="float:left;  cursor: pointer;" 
				onclick="location.href='course_List?mypage=true'">
				 <a class="btn" data-toggle="tab">전체 강의 목록  </a>
			</div>
              
             <div style="float:left;  cursor: pointer;" 
				onclick="location.href='course_List1?mypage=true'">
         	     <a class="btn"  data-toggle="tab">개강 예정 목록</a>
             </div>
  			<!-- style="background:#FFC6C6; -->          
            
            <div style="float:left;  cursor: pointer;" 
				onclick="location.href='course_List2?mypage=true'">
         	 	  <a  class="btn" data-toggle="tab">진행 중 목록</a>
            </div>
             
             
            <div style="float:left;  cursor: pointer;" 
				onclick="location.href='course_List3?mypage=true'">
     				<a class="btn"  data-toggle="tab">개강 종료 목록</a>
            </div>
            
          </div> 
          
        </div>
    </div>
</div>



	
	<!-- 여기부터 테스트입니다@@@@@@@@ㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲ -->

	<div style="width: 100%; border-bottom: 1px inset gray; background-color:">
<!-- 	<div style="background-color: gray;"><a href="/mvc/jun_List/course_register">등록등록</a>
	</div>
	 -->
		<jsp:include page="${list }"></jsp:include>
		
	</div>

	<!-- 
	여기가 테스트 끝입니다ㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲ -->

	

</body>
</html>