<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<title>Insert title here</title>
</head>
<body>
<h2>후기</h2>
<form action="reviewDeleteReg" method="post" enctype="multipart/form-data">
	<input type="hidden" name="id" value="${param.id }" />
    <table class="table" align="center">
        <tr>
            <th style="background-color:#D8D8D8; width: 100px; ">암호</th>
           <c:choose>
            	<c:when test="${grade eq '관리자' or grade eq '행정' }">
            		<th><input type="password" name="pw" value="${review.pw }" /></th>
            	</c:when>
            	<c:otherwise>
            		<th><input type="password" name="pw" /></th>
            	</c:otherwise>
            </c:choose>
        </tr>
        <tr>
            <th colspan="2" align="center">
                <input class="btn btn-default" type="submit" value="삭제" />
                <a href="reviewDetail?id=${review.id}">뒤로</a>
            </th>
        </tr>
    </table>
</form>
</body>
</html>