<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
            <td>암호</td>
            <td><input type="text" name="pw" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input class="btn btn-default" type="submit" value="삭제" />
                <a href="reviewDetail?id=${review.id}">뒤로</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>