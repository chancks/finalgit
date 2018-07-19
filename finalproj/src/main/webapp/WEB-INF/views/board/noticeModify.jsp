<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta name="viewport"content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<title>Insert title here</title>
</head>
<body>
<h2>공지사항</h2>
<form action="noticeModifyReg?id=${notice.id }" method="post" enctype="multipart/form-data">

	<table class="table" align="center">
		<tr>
			<th style="background-color:#D8D8D8; width: 100px; ">제목</th>
			<th><input type="text" name="title" value="${notice.title}" /></th>
		</tr>
		<tr>
			<th style="background-color:#D8D8D8 ">작성자</th>
			<th>${notice.pname}</th>
		</tr>
		<tr>
			<th style="background-color:#D8D8D8 ">암호</th>
			<th><input type="text" name="pw"/></th>
		</tr>
		<tr>
			<th style="background-color:#D8D8D8 ">내용</th>
			<th><textarea name="content" rows="5" cols="20">${notice.content }</textarea></th>
		</tr>
		<tr>
			<th colspan="2" align="center">
				<input type="button" class="btn btn-success" type="submit" value="수정" />
				<input type="button" class="btn btn-success" href="noticeDetail?id=${notice.id}" value="뒤로"/>
			</th>
		</tr>
	</table>
</form>
</body>
</html>