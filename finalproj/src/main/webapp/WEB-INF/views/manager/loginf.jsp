<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:choose>
	<c:when test="${id!=null || grade!=null}">
		${id } 님 반갑습니다.
		<input type="button" onclick="location.href='manager/logout'" value="로그아웃">
	</c:when>
	
	<c:otherwise>
		<form action="/mvc/manager/login" method="post">
			<table border="">
				<tr>
					<td>아이디 </td>
					<td><input type="text" name="aid"></td>
					<td colspan="2">
						<input type="submit" value="로그인" style="width: 100%;">
					</td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input type="password" name="apw"></td>
					<td><input type="button" onclick="location='/mvc/manager/schid'" value="id 찾기"></td>	
					<td><input type="button" onclick="location='/mvc/manager/schpw'" value="pw 찾기"></td>
				</tr>
				
			</table>
		</form>
	</c:otherwise>
</c:choose>
