<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<c:if test="${grade=='관리자' }">
	<a href="/fproj/manager/join?jgrade=강사">강사등록</a>
</c:if>	
<c:if test="${id=='admin' }">
	<a href="/fproj/manager/join?jgrade=관리자">행적직등록</a>
</c:if>


<a href="/fproj/manager/myinfo">내정보</a>
