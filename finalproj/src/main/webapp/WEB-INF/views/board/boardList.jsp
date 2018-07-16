<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
</style>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 , user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="../resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>


<title>Insert title here</title>
</head>
<body>

	<div><!-- <nav class="navbar navbar"  id="body"> --><!-- navbar-default   navbar-fixed-top -->
		<div align="center" >
			<ul class="nav navbar-nav nav-tabs">
				<li class="active"><a href="#qna" data-toggle="tab">QNA</a></li><br>
				<li><a href="#notice" data-toggle="tab">공지사항</a></li><br>
				<li><a href="#review" data-toggle="tab">후기</a></li>
			</ul>
		</div>
		
	<!-- </nav> -->
	</div>
	<div class="tab-content" id="con">
		<div class="tab-pane fade active in" id="qna">
			<a href="qnaList">QNA</a>
		</div>
		
		<div class="tab-pane fade" id="notice">
		<a href="noticeList">NOTICE</a>
		</div>
		
		<div class="tab-pane fade" id="review">
			<a href="reviewList">REVIEW</a>
		</div>
	</div>

	
</body>
</html>