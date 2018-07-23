<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<meta name="viewport"
	content="width=device-width, initial-scale=1.0 , user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="../resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap/css/bootstrap-theme.min.css">



<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/3.3.0/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="../resources/bootstrap/js/bootstrap.min.js"></script>

<head>


<style>
@media screen and (min-width:380px) {
	.row{
			margin-left: 200px;

	}
	
	.container{
	
	
	}
	
	
}

@media screen and (max-width:380px) {
	.row{
	
	}	
}
</style>
<div id="legend">
	<legend>Login</legend>
</div>
<div class="container" style="width: 100%; height: 350px;">

    <div class="row">
        <div class="span12" >
            <form action="/mvc/manager/login" method="post">
        
            	<fieldset>

               
	               <div class="control-group">
	                 <label class="control-label" >아이디</label>
	                 <div class="controls">
	                 	<input type="text" name="aid" id="username" class="input-xlarge" style="height:25px; width:220px">
	                 </div>
	               </div>
               
					<div class="control-group" style="margin-top: 7px;">
              			<label class="control-label">패스워드</label>
	                 	<div class="controls">
	                 		<input type="password" name="apw" id="password" class="input-xlarge" style="height:25px; width:220px">
	                    </div>
               		</div>
               
              		<div class="control-group">
                 
                 		<div class="controls" style="margin-top: 10px;">
                 
	                 		<input type="submit" value="로그인" class="btn btn-success">
	                   		<input type="button" onclick="location='/mvc/manager/schid'" value="id 찾기" class="btn btn-success">
							<input type="button" onclick="location='/mvc/manager/schpw'" value="pw 찾기" class="btn btn-success">
                   
	                  	</div>
	                </div>
	              </fieldset>
            </form>
        </div>
    </div>

</div>

