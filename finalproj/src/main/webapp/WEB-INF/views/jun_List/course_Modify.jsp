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

@media screen and (min-width:380px) {

}

@media screen and (max-width:380px) {


table{
	font-size: 10px;
	width:320;
}

}


</style>


<script type="text/javascript">

function join(){
	var time = document.getElementById('time');
	var frm = document.frm;
	var title = document.getElementById('ctitle');
	var code = document.getElementById('ccode');
	var total = document.getElementById('ctotal');
	var content = document.getElementById('ccontent');
 	
	if(title.value==''||title.value==null){ alert("과정명을 입력하세요");return;}

	else if(total.value==''||total.value==null){alert("정원을 입력하세요");return;}
	else if(content.value==''||content.value==null){alert("내용을 입력하세요");return;}	
	else{
 		frm.submit();
 		return;
	 }  
}

</script>


<title>Insert title here</title>
</head>
<body>

		<form action="course_ModifyReg?" method="post"
		enctype="multipart/form-data" name="frm">

	<input type="hidden" name="mypage" value="true"/>
	<input type="hidden" name="ccode" value="${data.ccode}"/>
	<input type="hidden" name="cday" value="${data.cday}"/>
		<table class="table"> 
		<tr>
			<td style="background-color:#D8D8D8;">과정 명</td>
			<td colspan="5">	<input type="text" name="ctitle" id="ctitle" value="${ data.ctitle}" style="width:730px;height:21px" /></td>
		</tr>
		
		<tr>	
			<td style="background-color:#D8D8D8;">강사 선택</td>
			<td><select name="schCol" style="width:120px; height:26px">
					<c:forEach items="${teacher}" var="row" varStatus="no">
						<option value="${row.aname}">${row.aname}</option>
					</c:forEach>
				</select></td>
			
			<td style="background-color:#D8D8D8;">강사 id</td>
			<td>	<select name="col" style="width:120px; height:26px">
					<c:forEach items="${teacher}" var="row" varStatus="no">
						<option value="${row.aid}">${row.aid}(이름:${row.aname})</option>
					</c:forEach>
				</select></td>
			
			<td style="background-color:#D8D8D8;">과목 코드</td>
			<td>${data.ccode}
			</td>
		</tr>
		
		<tr>
			<td style="background-color:#D8D8D8;">요일</td>
			<td>${data.cday}</td>
			<!-- <td>	<select name="cday" style="width:120px; height:26px">
						<option value="월">월</option>
						<option value="화">화</option>
						<option value="수">수</option>
						<option value="목">목</option>
						<option value="금">금</option>
						<option value="토">토</option>
						<option value="일">일</option>
				</select></td>
			 -->
			<td style="background-color:#D8D8D8;">시간</td>
			<td>${data.ctime}</td>
			<%-- <td>	<input type="text" name="ctime" id="time" value="${ data.ctime}" style=" width:120px;height:26px;" />
		</td> --%>
			
			<td style="background-color:#D8D8D8;">정원</td>
			<td>	<input type="number" name="ctotal" id="ctotal" min="1" max="100" style=" width:110px; height:26px;margin-left: 10px" value="${ data.ctotal}" />
			</td>
		</tr>
		
		
		<tr>
			<td style="background-color:#D8D8D8;">시작일</td>
			
			<td>${ data.cstart}</td>
			<%-- <td>	<input type="date" name="cstart" value="${ data.cstart}" style="width:150px; height:26px"/>
		</td> --%>
			<td style="background-color:#D8D8D8;">종료일</td>
			
			<td>${ data.cfinish}</td>
		<%-- 	<td>	<input type="date" name="cfinish" value="${ data.cfinish}" style="width:150px; height:26px" />
			</td> --%>
		</tr>
		
		
		<tr>
			<td style="background-color:#D8D8D8;">과정 내용</td>
			<td  colspan="5"><textarea name="ccontent" id="ccontent" rows="10" cols="89px" style="margin-top: 4px; resize: none;">${data.ccontent}</textarea></td>
		</tr>
		
	
		</table>
		

			
<hr size=1px color="#ddd">	
		

			<div>
			<input type="button" onclick="join()" value="등록">
			<input type="reset" value="초기화" />
			<a style="margin-left: 620px;" href="course_Detail?ccode=${data.ccode }&cday=${data.cday }&mypage=true">뒤로가기</a>
			<!-- 	<input type="submit" value="작성" /><a href="/mvc/manager/memberlist?mypage=true">뒤로 가기</a> -->
			</div>

	</form>
</body>
</html>