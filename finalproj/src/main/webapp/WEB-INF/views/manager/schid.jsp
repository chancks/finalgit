<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<form action="schidreg">	
	<table>
		<tr>
			<td colspan="2">ID찾기</td>
		<tr>
		<tr>
			<td>
				이름
			</td>
			<td>
				<input type="text" name ="aname">
				<form:errors path="mngUserVO.aname"/>
			</td>
		</tr>
		<tr>
			<td>
				이메일
			</td>
			<td>
				<input type="text" name="aemail">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="찾기">
			</td>
		</tr>
	</table>
	
</form>