<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<% Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String strdate = sdf.format(date);
%>       
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 , user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="../resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/bootstrap/css/bootstrap-theme.min.css">



<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/3.3.0/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="../resources/bootstrap/js/bootstrap.min.js"></script>



<style>
@media screen and (min-width:380px) {

}

@media screen and (max-width:380px) {


table{
	font-size: 10px;
	width:320;
}

}

</style>


<title>Insert title here</title>
</head>
<body>

<div id="legend">
	<legend>과목 등록</legend>
</div>

<form action="course_insertReg?=" method="post" enctype="multipart/form-data">
		
		
		<table class="table"> 
		<tr>
			<td style="background-color:#D8D8D8;">과정 명</td>
			<td colspan="5">	<input type="text" name="ctitle" style="width:730px;height:21px" /></td>
		</tr>
		
		<tr>	
			<td style="background-color:#D8D8D8;">강사 선택</td>
			<td><select name="schCol" style="width:120px; height:26px">
					<c:forEach items="${data }" var="row" varStatus="no">
						<option value="${row.aname}">${row.aname}</option>
					</c:forEach>
				</select></td>
			
			<td style="background-color:#D8D8D8;">강사 id</td>
			<td>	<select name="col" style="width:120px; height:21px">
					<c:forEach items="${data }" var="row" varStatus="no">
						<option value="${row.aid}">${row.aid}(이름:${row.aname})</option>
					</c:forEach>
				</select></td>
			
			<td style="background-color:#D8D8D8;">과목 코드</td>
			<td><input type="text" name="ccode" style="width:110px;height:26px; margin-left: 10px"/>
			</td>
		</tr>
		
		<tr>
			<td style="background-color:#D8D8D8;">요일</td>
			<td>	<select name="cday" style="width:120px; height:26px">
						<option value="월">월</option>
						<option value="화">화</option>
						<option value="수">수</option>
						<option value="목">목</option>
						<option value="금">금</option>
						<option value="토">토</option>
						<option value="일">일</option>
				</select></td>
			
			<td style="background-color:#D8D8D8;">시간</td>
			<td>	<input type="text" name="ctime" style=" width:120px;height:26px;" />
		</td>
			
			<td style="background-color:#D8D8D8;">정원</td>
			<td>	<input type="number" name="ctotal" min="1" max="100" style=" width:110px; height:26px;margin-left: 10px" />
			</td>
		</tr>
		
		
		<tr>
			<td style="background-color:#D8D8D8;">시작일</td>
			<td>	<input type="date" name="cstart" value="2018-07-20" style="width:150px; height:21px"/>
		</td>
			<td style="background-color:#D8D8D8;">종료일</td>
			<td>	<input type="date" name="cfinish" value="2018-08-30" style="width:150px; height:21px" />
			</td>
		</tr>
		
		
		<tr>
			<td style="background-color:#D8D8D8;">과정 내용</td>
			<td  colspan="5"><textarea name="ccontent" rows="10" cols="89px" style="margin-top: 4px; resize: none;"></textarea></td>
		</tr>
		
	
		</table>
		
		
<%-- 		

		<div id="rap" style="border: 1px #ddd solid; width: 605px;">
		
		
			<div style="margin-bottom: 2px ;background-color: red;" >
				<div style="float: left; width: 90px; text-align:center;background-color: blue;" >과정 명</div>
				<div style="margin-top: 2px; background-color: pink;">
					<input type="text" name="ctitle" style="width:500px;height:21px" />
				</div>
			</div>
			
<!-- <hr size=1px color="#ddd">	 -->
	
	
		<div style="" >		
			
			<div style="float: left; width: 90px; margin-top: 2px; text-align:center; background-color: red;">강사 선택</div>
			
			<div style="float: left; margin-top: 4px;">
				<select name="schCol" style="width:80px; height:21px">
					<c:forEach items="${data }" var="row" varStatus="no">
						<option value="${row.aname}">${row.aname}</option>
					</c:forEach>
				</select>
			</div>

			<div style="float: left; width: 90px;  margin-top: 2px; text-align:center; background-color: red;">강사 id
			</div>


			<div style="float:left;  margin-top: 4px;background-color: red;">
				<select name="col" style="width:120px; height:21px">
					<c:forEach items="${data }" var="row" varStatus="no">
						<option value="${row.aid}">${row.aid}(이름:${row.aname})</option>
					</c:forEach>
				</select>
			</div>

			
			<div style="float: left; width: 80px; margin-top: 2px; margin-left: 10px; text-align:center;background-color: red;">과목 코드
			</div>
			
			<div>
				<input type="text" name="ccode" style="width:110px;height:21px; margin-top: 4px; margin-left: 10px"/>
			</div>
			
		</div>


<hr size=1px color="#ddd">	

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
				<input type="text" name="ctime" style="margin-top: 4px; width:120px;height:21px; float: left;" />
			</div>
			
			<div style="float: left; width: 80px; margin-top: 2px; margin-left: 10px; text-align:center">
				정 원
			</div>
			<div>
				<input type="number" name="ctotal" min="1" max="100" style="margin-top: 4px; width:110px; height:21px;margin-left: 10px" />
			</div>
		</div>


<hr size=1px color="#ddd">	


		<div style="margin-top: 5px; height: 20px">
			
			<div style="float:left;  width: 90px; text-align:center; ">
				시작일
			</div>
			
			
			<div  style="float:left;">
				<input type="date" name="cstart" value="2018-07-20" style="width:205px; height:21px"/>
			</div>
			
			<div style="float:left;  width: 90px; text-align:center">
				종료일
			</div>
			<div style="float:left;">
				<input type="date" name="cfinish" value="2018-08-30" style="width:205px; height:21px" />
			</div>
			
		</div>



<hr size=1px color="#ddd">	



		<div style="margin-top: 4px;">
			<div style="float: left; width: 90px; margin-top: 2px; text-align:center;">과정 내용</div>
			<div>
				<textarea name="ccontent" rows="10" cols="68.8px" style="margin-top: 4px; resize: none;">
		
				</textarea>
			</div>
		</div>
		<div style="" >		
			
			<div style="float: left; width: 90px; margin-top: 2px; text-align:center; background-color: red;">강사 선택</div>
			
			<div style="float: left; margin-top: 4px;">
				<select name="schCol" style="width:80px; height:21px">
					<c:forEach items="${data }" var="row" varStatus="no">
						<option value="${row.aname}">${row.aname}</option>
					</c:forEach>
				</select>
			</div>

			<div style="float: left; width: 90px;  margin-top: 2px; text-align:center; background-color: red;">강사 id
			</div>


			<div style="float:left;  margin-top: 4px;background-color: red;">
				<select name="col" style="width:120px; height:21px">
					<c:forEach items="${data }" var="row" varStatus="no">
						<option value="${row.aid}">${row.aid}(이름:${row.aname})</option>
					</c:forEach>
				</select>
			</div>

			
			<div style="float: left; width: 80px; margin-top: 2px; margin-left: 10px; text-align:center;background-color: red;">과목 코드
			</div>
			
			<div>
				<input type="text" name="ccode" style="width:110px;height:21px; margin-top: 4px; margin-left: 10px"/>
			</div>
			
		</div>
 --%>
			
<hr size=1px color="#ddd">	
		

			<div>
				<input type="submit" value="작성" /><a href="/mvc/manager/memberlist?mypage=true">뒤로 가기</a>
			</div>

	</div>
	</form>
</body>
</html>