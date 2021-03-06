<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta name="viewport"content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>
<script type="text/javascript">

	function input() {
		var frm = document.insert;
		var title = frm.title;
		var pw = frm.pw;
		var content = frm.content;
		
		if(title.value == '' || title.value == null){
			alert("제목을 작성하세요");
			title.value='';
			title.focus();
			return ;
		}
		if(pw.value == '' || pw.value == null){
			alert("비밀번호를 작성하세요");
			pw.value='';
			pw.focus();
			return;
		}
		if(content.value == '' || content.value == null){
			alert("제목을 작성하세요");
			content.value='';
			content.focus();
			return;
		}
		
		frm.submit();
	}
</script>
<style type="text/css">
table{
	width:320;
}
#table_rap{
width: 700px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<h2>후기</h2>
<form action="reviewInsertReg" method="post" enctype="multipart/form-data" name="insert">
<div id="table_rap">
	<table class="table" align="center">
		<tr>
			<th style="background-color:#D8D8D8; width: 15%; ">제목</th>
			<th colspan="3"><input type="text" name="title" /></th>
		</tr>
		<tr>
			<th style="background-color:#D8D8D8">작성자</th>
			<th style="width: 50%;"><input type="hidden" name="pname" value="${id }" />익명</th>
			<th style="background-color:#D8D8D8; width: 50px;">강사</th>
				<th><select name="Pro">
						<c:forEach items="${review }" var="row">
							<option value="${row.aname}(${row.aid})">${row.aname}(이름:${row.aid})</option>
						</c:forEach>
					</select>
				</th>
		</tr>
		<tr>
			<th style="background-color:#D8D8D8 ">암호</th>
			<th colspan="3"><input type="password" name="pw" /></th>
		</tr>
		<tr>
			<th style="background-color:#D8D8D8 ">내용</th>
			<th colspan="3"><textarea name="content" rows="10" style="resize: none; width: 500px;">내용을 작성하세요</textarea></th>
		</tr>
		<tr>
			<th colspan="2" align="center">
				<input class="btn btn-default" type="button" value="작성" onclick="input()"/>
				<a href="reviewList?page=${param.page }">뒤로</a>
			</th>
		</tr>
	</table>
</div>
</form>
</body>
</html>