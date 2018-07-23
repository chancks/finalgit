
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
<head>
<style type="text/css">
 #qna{
	background-color: fuchsia; 
} 
 #notice{
	background-color: maroon; 
} 
#back{
	margin : 550px;
}
.btn{
	width: 130px;
}
</style>
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
@media screen and (min-width:380px) {

}

@media screen and (max-width:380px) {


table{
	font-size: 10px;
	width:320;
}

/* #ss{
	width:90px;
} */

.btn{
	width: 78px;
}

#qq{
	font-size: 10px;
}

#hight_top{
	margin-left: -20px;
}

#top_menu{
	margin-left: -40px;
}


#main{
 	margin-left: 20px;

}

#sub_menu{
	margin-left: -20px;
}

}


#search {
	margin-top: 60px;
}
</style>



<title>Insert title here</title>
</head>
<body>
<!-- 
<div class="container" style=" height:35px; width:100% ;" >
	<div class="row">
		<div class="span12">
  			<ul class="nav navbar-nav nav-tabs">
				<li class="btn"><a onclick="location.href='qnaList'" data-toggle="tab">QNA</a></li>
				<li class="btn"><a onclick="location.href='noticeList'" data-toggle="tab">공지사항</a></li>
				<li class="btn"><a onclick="location.href='reviewList'" data-toggle="tab">후기</a></li>
			</ul>
		</div>

	</div>
</div>
 -->
 
   <div id="legend">
	                 <legend>고객 센터</legend>
	                 </div>
<div class="container" style=" height:35px; width:100% ;" >
	<div class="row">
		<div class="span12">
            <div id="tab" class="btn-group" data-toggle="buttons-radio">
             
             <div style="float:left;  cursor: pointer;"
				onclick="location.href='qnaList'">
				 <a class="btn" data-toggle="tab"><div id="qq">QNA</div> </a>
			</div>
              
             <div style="float:left;  cursor: pointer;" 
				onclick="location.href='noticeList'">
         	     <a class="btn"  data-toggle="tab"><div id="qq">공지사항</div></a>
             </div>
  			<!-- style="background:#FFC6C6; -->          
            
            <div style="float:left;  cursor: pointer;" 
				onclick="location.href='reviewList'">
         	 	  <a  class="btn" data-toggle="tab"><div id="qq">후기</div></a>
            </div>
             
            
          </div> 
          
        </div>
    </div>
</div>
	<div style="width: 100%; border-bottom: 1px inset gray; background-color:">
		<jsp:include page="${List}"></jsp:include>
	</div>
	
</body>
</html>