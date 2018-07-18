<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<title>Insert title here</title>
</head>
<body>
<h2>후기</h2>
<form action="reviewModifyReg?id=${review.id }" method="post" enctype="multipart/form-data">

	<table class="table" align="center">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" value="${review.title}" /></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${review.pname}</td>
		</tr>
		<tr>
			<td>암호</td>
			<td><input type="text" name="pw"/></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" rows="5" cols="20">${review.content }</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input class="btn btn-default" type="submit" value="수정" />
				<a href="reviewDetail?id=${review.id}">뒤로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>