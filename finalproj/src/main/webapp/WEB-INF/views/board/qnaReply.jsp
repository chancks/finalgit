<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta name="viewport"content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<title>Insert title here</title>
</head>
<body>
<h2>Q&A</h2>
<form action="qnaReplyReg?id=${qna.id}" method="post" enctype="multipart/form-data">
<input type="hidden" value="${qna.gid}" name="gid">
<input type="hidden" value="${qna.seq}" name="seq">
	<table class="table" align="center">
		<tr>
			<th style="background-color:#D8D8D8; width: 100px; ">제목</th>
			<th><input type="text" name="title"  value="&nbsp; RE : ${qna.title}"/></th>
		</tr>
		<tr>
			<th style="background-color:#D8D8D8 ">작성자</th>
			<th><input type="hidden" name="pname" value="관리자"/>관리자</th>
		</tr>
		<tr>
			<th style="background-color:#D8D8D8 ">암호</th>
			<th><input type="password" name="pw" /></th>
		</tr>
		<tr>
			<th style="background-color:#D8D8D8 ">내용</th>
			<th><textarea name="content" rows="5" cols="20">내용을 작성하세요</textarea></th>
		</tr>
		<tr>
			<th colspan="2" align="center">
				<input class="btn btn-default" type="submit" value="작성" />
				<a href="qnaDetail?id=${qna.id}">뒤로</a>
			</th>
		</tr>
	</table>
</form>
</body>
</html>