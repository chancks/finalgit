<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="../resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>
<style>

</style>
<title>Insert title here</title>
</head>
<body>
	<form action="payReg" method="post" enctype="multipart/form-data">
		<input type="hidden" value="${30*param.cnt }" name="cpprice" />
		<div class="panel panel-info">
            <div class="panel-body">
           		<div class="form-group">
                	<div class="col-md-12"><strong>Credit Card Number:</strong></div>
                	<div class="col-md-12"><input type="text" name="cpnum" /></div>
                	<div>결제 금액:${30*param.cnt }만원</div>
					<div><input type="submit" value="결제" /></div>
            	</div>
           	</div>
   		 </div>
   </form>
</body>
</html>