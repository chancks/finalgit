<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"content="width=device-width, initial-scale=1.0 , 
user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<title>Insert title here</title>
</head>
<body>
	<table border="" align="center">
		<form alction="?">
			<tr>
				<td colspan="5" align="center">
					<select name="schCol">
						<option value="title">제목</option>
						<option value="pname">작성자</option>
						<option value="content">내용</option>
						<option value="cnt">조횟수</option>
					</select>
					<input type="text" name="title" value="${param.title}">
					<input type="submit" value="검색">
				</td>
			</tr>
		</form>
		<tr> 
			<td align="center">번호</td>
			<td align="center">제목</td>
			<td align="center">작성자</td>
			<td align="center">작성일</td>
			<td align="center">조회수</td>
		</tr>	

		<c:forEach items="${notice}" var="noticeRow" varStatus="noticeNo">
			<tr>
				<td align="center">${noticeNo.index+1}</td>
				<td><a href="noticeDetail?id=${noticeRow.id }">${noticeRow.title}</a></td>
				<td>관리자</td>
				<td>${noticeRow.reg_date}</td>
				<td align="center">${noticeRow.cnt}</td>
			</tr>
		</c:forEach>
	   	<tr>
			<tr>
				<td colspan="5" align="center">
					<c:if test="${data3.startPage>1}">
						<a href="noticeList?page=1">[처음]</a>
						<a href="noticeList?page=${data3.startPage-1}"><</a>
					</c:if>
					<c:forEach var="i" begin="${data3.startPage }" end="${data3.endPage }">
						<c:choose>
							<c:when test="${i==data3.page }">
								[${i}]
							</c:when>
							<c:otherwise>
								<a href="noticeList?page=${i }">${i}</a>
							</c:otherwise>
						</c:choose>
						
					</c:forEach>
					<c:if test="${data3.endPage<data3.totalPage }">
						<a href="noticeList?page=${data3.endPage+1}">></a>
						<a href="noticeList?page=${data3.totalPage }">[마지막]</a>
					</c:if>
				</td>
			</tr>
		</tr>
		<tr>
			<td align="left">
				<a href="boardList">뒤로</a>
			</td>	
			<c:if test="${grade eq '관리자' }">
				<td colspan="5" align="right">
				<a href="noticeInsertForm">글쓰기</a>
				</td>
			</c:if>
		</tr>	
				
	</table>
</body>
</html>