<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 , user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="../resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>


<style>
@media screen and (min-width:600px) {
	table {
		background-color: #ffff00;
	}
}

@media screen and (max-width:600px) {
	table {
		background-color: #00ff00;
	}
}
</style>


<title>Insert title here</title>
</head>
<body>

	<form action="course_ModifyReg?=${data.ccode}" method="post"
		enctype="multipart/form-data">

		<div id="rap" style="border: 1px #ddd solid; width: 605px">
		
		
			<div style="margin-bottom: 2px;" >
				<div style="float: left; width: 90px; text-align:center" >과정 명</div>
				<div style="margin-top: 2px">
					<input type="text" name="ctitle" style="width:500px;height:21px" value="${ data.ctitle}" />
				</div>
			</div>
			
<hr size=1px color="#ddd">	
	
	
		<div style="" >		
			
			<div style="float: left; width: 90px; margin-top: 2px; text-align:center">강사 선택</div>
			
			<div style="float: left; margin-top: 4px;">
				<select name="schCol" style="width:80px; height:21px">
					<c:forEach items="${teacher }" var="row" varStatus="no">
						<option value="${row.aname}">${row.aname}</option>
					</c:forEach>
				</select>
			</div>

			<div style="float: left; width: 90px;  margin-top: 2px; text-align:center">강사 id
			</div>


			<div style="float:left;  margin-top: 4px;">
				<select name="col" style="width:120px; height:21px">
					<c:forEach items="${teacher }" var="row" varStatus="no">
						<option value="${row.aid}">${row.aid}(이름:${row.aname})</option>
					</c:forEach>
				</select>
			</div>

			
			<div style="float: left; width: 80px; margin-top: 2px; margin-left: 10px; text-align:center">과목 코드
			</div>
			
			<div>
				<input type="text" name="ccode" style="width:110px;height:21px; margin-top: 4px; margin-left: 10px"value="${ data.ccode}"/>
			</div>
			
		</div>


		<div style="margin-top: 2px; ">
			<div  style="float: left; width: 90px; text-align:center; margin-top: 2px">
				요 일
			</div>
			
			
			
			<div style="float: left; margin-top: 4px;">
				<select name="cday" style="width:80px; height:21px">
						<option value="월">월</option>
						<option value="화">화</option>
						<option value="수">수</option>
						<option value="목">목</option>
						<option value="금">금</option>
						<option value="토">토</option>
						<option value="일">일</option>
				</select>
			</div>
			
		
			<div  style="float: left; width: 90px;  margin-top: 2px; text-align:center">시 간</div>
			<div>
				<input type="text" name="ctime"  value="${ data.ctime}" style="margin-top: 4px; width:120px;height:21px; float: left;" />
			</div>
			
			<div style="float: left; width: 80px; margin-top: 2px; margin-left: 10px; text-align:center">
				정 원
			</div>
			<div>
				<input type="number" name="ctotal" style="margin-top: 4px; width:110px; height:21px;margin-left: 10px" value="${ data.ctotal}" />
			</div>
		</div>


<hr size=1px color="#ddd">	


		<div style="margin-top: 5px; height: 20px">
			
			<div style="float:left;  width: 90px; text-align:center; ">
				시작일
			</div>
			
			
			<div  style="float:left;">
				<input type="date" name="cstart" value="${ data.cstart}" style="width:205px; height:21px"/>
			</div>
			
			<div style="float:left;  width: 90px; text-align:center">
				종료일
			</div>
			<div style="float:left;">
				<input type="date" name="cfinish" value="${ data.cfinish}" style="width:205px; height:21px" />
			</div>
			
		</div>



<hr size=1px color="#ddd">	



		<div style="margin-top: 4px;">
			<div style="float: left; width: 90px; margin-top: 2px; ">과정 내용</div>
			<div>
				<textarea name="ccontent" rows="10" cols="68.8px" style="margin-top: 4px; resize: none;">
				${data.ccontent}
				</textarea>
			</div>
		</div>

			
<hr size=1px color="#ddd">	
		


			<div>
				<input type="submit" value="작성" />
			</div>
			<div>
				<input type="reset" value="초기화" />
			</div>
			<div>
				<a href="course_Detail?ccode=${row.ccode }&mypage=true">뒤로가기</a>
			</div>
		</div>
	</form>
</body>
</html>