<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"content="width=device-width, initial-scale=1.0 , 
user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../resources\bootstrap-3.2.0-dist\js\jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
	<div>
		<ul class="nav navbar-nav nav-tabs">
			<li class="active"><a href="#first" data-toggle="tab">네이마르</a></li>
			<li><a href="#second" data-toggle="tab">기성용</a></li>
			<li><a href="#third" data-toggle="tab">마라도나</a></li>
		</ul>
	</div>
</nav>
<div class="tab-content" style="margin-top:80px;">
	<div class="tab-pane fade active in" id="first">
<table border="">
	<form alction="?">
		<tr>
			<td colspan="5" align="center">
			검색	<select name="schCol">
					<option value="title">제목</option>
					<option value="pname">작성자</option>
					<option value="content">내용</option>
					<option value="cnt">조횟수</option>
				</select>
				<input type="text" name="title" value="${param.title}">
				<input type="submit" value="검색">
			</td>
		</tr>
	</form>
	<tr> 
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>	

	<c:forEach items="${data }" var="row" varStatus="no">
		<tr>
			<td>${no.index}</td>
			<td><a href="detail?id=${row.id }">${row.title}</a></td>
			<td>${row.pname}</td>
			<td>${row.reg_date}</td>
			<td>${row.cnt}</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="5" align="right">
		<a href="insertForm">글쓰기</a>
		</td>
	</tr>	
</table>
	</div>
	
	<div class="tab-pane fade" id="second">
	<p>
		[마이데일리 = 안경남 기자] 영국 언론이 기성용의 한국 대표팀 은퇴가 새로운 소속팀 뉴캐슬 유나이티드에겐 좋은 소식이라고 보도했다.

영국 HITC는 6일(한국시간) 기성용이 대표팀 은퇴를 암시했다며 이는 뉴캐슬에게 좋은 소식이라고 전했다. 

기성용은 러시아 월드컵을 끝으로 대표팀에서 물러나겠다는 뜻을 나타냈다. 다만 아직 구체적으로 언제 태극마크를 내려놓을지에 대해선 고민 중이다.
</p>
	</div>
	
	<div class="tab-pane fade" id="third">
	
	<p>
		이번 러시아 월드컵에서 스타 선수 못지않은 관심(?)을 받는 인물이 있다. 바로 '1986 월드컵의 영웅' 디에고 마라도나(57·아르헨티나)다. 

현역 시절 상대 선수 6명을 제치는 드리블 돌파와 개인기로 세계 축구계를 평정했던 그는 러시아에서 온갖 기행을 펼치며 외신들의 스포트라이트를 한 몸에 받고 있다. 자신의 영원한 라이벌인 펠레가 건강 문제 때문에 집에서 월드컵을 지켜보고 있는 상황이라 더욱 관심을 받는 중이다. 마라도나는 자국 후배 리오넬 메시가 일찌감치 월드컵 일정을 마치고 스페인 바르셀로나로 복귀한 사이 혼자 러시아를 누비며 원맨쇼를 펼치고 있는 셈이다. 
</p>
	</div>


</div>




</body>
</html>