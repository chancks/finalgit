
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="ct" tagdir="/WEB-INF/tags" %>
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



<div id="legend">
   <legend>강사 소개</legend>
</div>


<div style="width: 100%; height: 100%; overflow: scroll; ">
	<c:forEach items="${data }" var="dd">
		<c:if test="${dd.agrade eq 'teacher' }">
			<c:set var="a" value="true"></c:set>
			<center>
				<div style="width: 95%; height : 30%;  margin: 3px; border: 1px solid #ddd; ">
					<div style="height:16%; width: 100%;  position: relative; padding: 2px; background-color: #ddd" >
						${dd.aname }
					</div>
					
					<div style="float: left; width:30%; height: 70%; position: relative;  border: 1px solid #ddd;" >
						<c:choose>
							<c:when test="${dd.aupfile eq null }">
								사진없음
							</c:when>
							<c:otherwise>
								<img src="../resources/picture/${dd.aupfile }" width="250px" height="170px">
							</c:otherwise>
						</c:choose>
						
					</div>
					<div style="width: 70%; height:70%;float : right; position: relative; overflow:scroll; vertical-align:middle; padding:4px; border: 1px solid #ddd;">
						<ct:conBr>${dd.ainfo }</ct:conBr> 
					</div>
				</div>
			</center>
		</c:if>
	</c:forEach>
	<c:if test="${!a }">
			강사없음
	</c:if>
</div>


