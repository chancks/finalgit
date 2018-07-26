<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
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
<h2>Q&A</h2>
	<table align="center" class="table table-hover">
		<tr style="background-color:#D8D8D8;"> 
			<th align="center">번호</th>
			<th align="center">제목</th>
			<th align="center">작성자</th>
			<th align="center">작성일</th>
			<th align="center">조회수</th>
		</tr>	
		<c:choose>
			<c:when test="${qna.size()==0 }">
				<tr><th colspan="5" align="center">내용이 없습니다.</th></tr>
			</c:when>
			<c:otherwise>
		 		<c:forEach items="${qna}" var="qnaRow" varStatus="qnaNo">
					<tr>
						<th align="center">${(data3.page*15)+qnaNo.index-14}</th>
						<th><a href="qnaDetail?id=${qnaRow.id }">${qnaRow.title}</a></th>
						<th>${qnaRow.pname}</th>
						<th>${qnaRow.reg_date}</th>
						<th align="center">${qnaRow.cnt}</th>
					</tr>
				</c:forEach>
			
			<tr>
				<th colspan="5" align="center">
					<c:if test="${data3.startPage>1}">
						<a href="qnaList?page=1&schCol=${param.schCol}&title=${param.title}">[처음]</a>
						<a href="qnaList?page=${data3.startPage-1}&schCol=${param.schCol}&title=${param.title}"><</a>
					</c:if>
					<c:forEach var="i" begin="${data3.startPage }" end="${data3.endPage }">
						<c:choose>
							<c:when test="${i==data3.page }">
								[${i}]
							</c:when>
							<c:otherwise>
								<a href="qnaList?page=${i }&schCol=${param.schCol}&title=${param.title}">${i}</a>
							</c:otherwise>
						</c:choose>
						
					</c:forEach>
					<c:if test="${data3.endPage<data3.totalPage }">
						<a href="qnaList?page=${data3.endPage+1}">></a>
						<a href="qnaList?page=${data3.totalPage }">[마지막]</a>
					</c:if>
				</th>
			</tr>
		
			</c:otherwise>
		</c:choose>
		<form alction="?">
			<tr>
				<th colspan="5" align="center">
					<select name="schCol" style="width: 100px;">
						<option value="title">제목</option>
						<option value="pname">작성자</option>
						<option value="content">내용</option>
					</select>
					<input type="text" name="title" value="${param.title}">
					<input class="btn btn-default" type="submit" value="검색">

				</th>
			</tr>
		</form>
		<tr>
			<th colspan="5" align="right">
				<c:if test="${grade eq 'student' }">
					<input type="button" class="btn btn-success"
					onclick="location.href='qnaInsertForm'" value="글쓰기"/>
				</c:if>
			</th> 
		</tr>
	</table>
</body>
</html>