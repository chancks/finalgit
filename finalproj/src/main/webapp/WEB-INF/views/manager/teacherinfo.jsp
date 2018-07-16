<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div style="width: 100%; height: 100%; background: yellow">
	<div style="width: 100%; height : 30%; background: blue">

	</div>
	<div style="height: 30%; background: red">
	
	</div>
</div>
<c:forEach items="${data }" var="dd">
s
	${dd.aname }<br>
</c:forEach>
