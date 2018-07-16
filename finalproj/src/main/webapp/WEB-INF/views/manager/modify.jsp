<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<article>
  <form action="modifyreg" method="post" enctype="multipart/form-data">
	<table border="">
		<tr>
			<td>
			등급
			<input type=file id='file' name="up1" style="display: none;" accept=".jpg, .jpeg, .png" onchange="b(this)">
			<input type="hidden" name="aid" value="${user.aid }">
			
			</td>
			<td width="150">${user.agrade }</td>
			
			<c:choose>
				<c:when test="${user.aupfile!=null }">
					<td colspan="2" rowspan="3">
						<div id="picture">
						<img src="../resources/picture/${user.aupfile }" width="150" height="200">
						</div>
					
					<br>
					<input type="hidden" name="aupfile" value="${user.aupfile }">
					<input type="button" value="사진변경" onclick="document.all.file.click()">
					<input type="button" value="사진삭제" onclick="a()">
					</td>
				</c:when>
				<c:otherwise>
					<td colspan="2" rowspan="3">
					<div id="picture">
					사진없음
					</div>
					
					<br>
					<input type="button" value="사진등록" onclick="document.all.file.click()">
					</td>
				</c:otherwise>
			</c:choose>

		</tr>
		<tr>
			<td>id</td>
			<td>${user.aid}</td>
			
		</tr>
		<tr>
			<td>이름</td>
			<td>
			<input type="text" name="aname" value="${user.aname }">
			</td>
	
		</tr>
		<tr>
			<td>이메일</td>
			<td colspan="2">
			<input type="text" name="aemail" value="${user.aemail }">
			</td>
		</tr>
		<tr>
			<td>핸드폰</td>
			<td colspan="2">
			<input type="text" name="aphone" value="${user.aphone }">
			</td>
		</tr>
		<tr>
			<td>생일</td>
			<td colspan="2">
			<input type="text" name="abirth" value="${user.abirth }">
			</td>
		</tr>
		<tr>
			<td>정보</td>
			<td colspan="2">
			<textarea  name="ainfo" style="resize: none;">${user.ainfo }</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<a href="myinfo">뒤로</a>
				<input type="submit" value="입력">
			</td>
		</tr>
	</table>
	
</form>

</article>

<script>

function b(obj){
	var file = obj.files[0];
	var reader = new FileReader();
	var pp = document.getElementById('picture');
	
	reader.onload = function(event){
		var img = new Image();
		img.src = event.target.result;
		
		img.width = 150;
		img.height = 200;
		
		pp.innerHTML='';
		pp.appendChild(img);
	}
	
	reader.readAsDataURL(file);
	
	
}

function a() {
	location.href='filedelete';
}
</script>



 