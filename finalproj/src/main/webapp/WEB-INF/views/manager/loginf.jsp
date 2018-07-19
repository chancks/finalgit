<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<div class="container" style="width: 100%;">
	<center>
    <div class="row">
        <div class="span12">
            <form action="/mvc/manager/login" method="post">
            	<fieldset>
	               <div id="legend">
	                 <legend>Login</legend>
	               </div>
               
	               <div class="control-group">
	                 <label class="control-label" >아이디</label>
	                 <div class="controls">
	                 	<input type="text" name="aid" id="username" class="input-xlarge" style="height:32px">
	                 </div>
	               </div>
               
					<div class="control-group">
              			<label class="control-label">패스워드</label>
	                 	<div class="controls">
	                 		<input type="password" name="apw" id="password" class="input-xlarge" style="height:32px">
	                    </div>
               		</div>
               
              		<div class="control-group">
                 
                 		<div class="controls">
                 
	                 		<input type="submit" value="로그인" class="btn btn-success">
	                   		<input type="button" onclick="location='/mvc/manager/schid'" value="id 찾기" class="btn btn-success">
							<input type="button" onclick="location='/mvc/manager/schpw'" value="pw 찾기" class="btn btn-success">
                   
	                  	</div>
	                </div>
	              </fieldset>
            </form>
        </div>
    </div>
    </center>
</div>

