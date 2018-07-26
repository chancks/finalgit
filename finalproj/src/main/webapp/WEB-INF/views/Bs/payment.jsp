<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
<style>
@media screen and (min-width:380px) {
#rab{
margin-left:150px ;
}

}

@media screen and (max-width:380px) {
#rab{

margin-left: ;
}

}
</style>
<title>Insert title here</title>
</head>
<div id="legend">
	<legend>결제</legend>
</div>

<body>
	<form action="payReg" method="post" enctype="multipart/form-data">
		<input type="hidden" value="${30*param.cnt }" name="cpprice" />
	
	<div style="height: 400px;">
		<div id="rab" style="width: 500px; height: 150px; border:  1px solid #ddd;">
			
			<div style="margin-top: 20px; margin-left:  80px;">
				<div  style="float: left; margin-right: 10px;"><strong>Credit Card Number:</strong></div>
				<div style="padding-left: 20px;"> <input type="number" name="cpnum" max="9999" style="width:50px"/>-<input type="number" max="9999" style="width:50px"/>-<input type="number" max="9999" style="width:50px"/>-<input type="number" max="9999" style="width:50px"/></div>
			</div>
			
			
			<div style="margin-top: 20px; margin-left:  80px;">
				<div style="float: left; margin-right: 180px;"> 결제 금액:${30*param.cnt }만원</div>
				<div > <input  type="submit" value="결제" /></div>
			</div>
			
		</div>
		
	</div>
   </form>
</body>
</html>