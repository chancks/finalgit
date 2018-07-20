<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div style="width: 100%; height: 100%; background: yellow; overflow: scroll; ">
	<c:forEach items="${data }" var="dd">
		<c:if test="${dd.agrade eq 'teacher' }">
			<c:set var="a" value="true"></c:set>
			<center>
				<div style="width: 95%; height : 30%; background: blue; margin: 3px; border: 3px solid red;">
					<div style="height:30%; width: 100%; background: red; position: relative;" >
						${dd.aname }
					</div>
					
					<div style="float: left; background: gray; width:30%; height: 70%; position: relative;" >
						<c:choose>
							<c:when test="${dd.aupfile eq null }">
								사진없음
							</c:when>
							<c:otherwise>
								<img src="../resources/picture/${dd.aupfile }" width="250px" height="170px">
							</c:otherwise>
						</c:choose>
						
					</div>
					<div style="width: 70%; height:70%; background: green;float : right; position: relative; vertical-align:middle; text-align: center;">
						${dd.ainfo }
					</div>
				</div>
			</center>
		</c:if>
	</c:forEach>
	<c:if test="${!a }">
			강사없음
	</c:if>
</div>


