<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"content="width=device-width, initial-scale=1.0 , user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
@media screen and (min-width:600px){
	table{
		background-color: #ffff00;
	}
}

@media screen and (max-width:600px){
	table{
		background-color: #00ff00;
	}
}

</style>


<title>Insert title here</title>
</head>
<body>

<form action="course_insertReg?=" method="post" enctype="multipart/form-data">

	
	<div><h2>과정명</h2></div>
	<div><input type="text" name="ctitle" /></div>
	
	<div><h2>강사명</h2></div>

<div>
		
			<select name="schCol">
			<c:forEach items="${data }" var="row" varStatus="no">
				<option value="${row.aname}">${row.aname}</option>
				</c:forEach>
			</select>
</div>
<!-- 

		<div><input type="text" name="cname" /></div>
 -->
	<div><h2>강사ID</h2></div>
	<div><input type="text" name="cid" /></div>
	<div>
		
			<select name="col">
			<c:forEach items="${data }" var="row" varStatus="no">
				<option value="${row.aid}">${row.aid}(이름:${row.aname})</option>
				</c:forEach>
			</select>
	</div>

	<div><h2>과정내용</h2></div>
	<div><textarea name="ccontent" rows="5" cols="20">과정 내용 적자</textarea></div>
	
	
 	<div><h2>과정 기간</h2></div>
	<div>시작일</div>
		<div><input type="date" name="cstart" value="2017-10-10"/></div> <!-- onchange="submit()" -->
	<!-- <div><input type="text" name="cstart" /></div> -->
	<div>종료일</div>
		<div><input type="date" name="cfinish" value="2018-10-10"/></div>
	<!-- <div><input type="text" name="cfinish" /></div> -->
	 
	<div><h2>수업 시간</h2></div>
	<div>요일</div>
	<div><input type="number" name="cday" min="1" max="8"/></div>
	<div>파트</div>
	<div><input type="text" name="ctime"/></div>
	

	<div><h2>과목 코드</h2></div>
	<div><input type="text" name="ccode" /></div>
	

	<div><h2>총 원</h2></div>
	<div><input type="number" name="ctotal" /></div>
	
	<div><input type="submit" value="작성" /><a href="../">뒤로 가기</a></div>
	

</form>
</body>
</html>