<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<script src="../js/jquery-3.6.0.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			// [객체].동작();
			// (선택자)
			
			// * - 전체 요소
			$('*').css('color', 'red');
			//태그명 - 특정태그요소
			$('h2').css('color', 'pink');
			//id값 - #id이름
			$('#title1').css('color', 'yellow');
			//class값 - .class이름
			$('.title2').css('color', 'blue');
			$('h2.title2').css('color', 'blue');
			
			//input 태그의 글자책을 orange색으로 변경
			$('input').css('color', 'orange');
			
			
			// 속성 탐색 선택자
			// '태그[속성=값]'
			// '태그[속성^=값]' : 속성이 값으로 시작하는 태그
			// '태그[속성$=값]' : 속성이 값으로 끝나는 태그
			// '태그[속성~=값]' : 속성이 값을 포함하는 태그(단어)
			
			$('input[type=text]').css('color','yellow');
			$('input[type^=p]').css('color','green');
			
			$('input[type=text]').val('아이티윌');
			var id = $('input[type=text]').val('아이티윌');
			alert('아이디 : ' + id);
			console.log(id);
			
			alert($('input[type=text]').val());
			
			
			///////////////////////////////////
			// 위치 탐색 선택자
			// 태그:first (처음), 태그:last  (끝)
			// 태그:odd   (홀수), 태그:even  (짝수)
			// 홀짝에서 주의할 것은 index값은 0부터 시작이라는 점
			
			
			//테이블 첫번째 요소
			$('tr').css('background', 'yellow');
			$('tr:first').css('background', 'red');
			$('tr:odd').css('background','green');
			$('tr:even').css('background','blue');
			
		}); 
	
	</script>

</head>
<body>
	<h1>WebContent/jq1/test2.jsp</h1>
	
	
	<h2 id="title1"> 제목 </h2>
	<h2 class="title2"> 제목2 </h2>
	
	<hr>
	
	아이디 : <input type="text"> <br>
	비밀번호 : <input type="password"> <br>
	
	<hr>
	
	<table border="1">
		<tr>
			<td>이름</td><td>성별</td><td>지역</td>
		</tr>
		<tr>
			<td>이름</td><td>성별</td><td>지역</td>
		</tr>
		<tr>
			<td>이름</td><td>성별</td><td>지역</td>
		</tr>
		<tr>
			<td>이름</td><td>성별</td><td>지역</td>
		</tr>
		<tr>
			<td>이름</td><td>성별</td><td>지역</td>
		</tr>
	</table>
	
	
	
	
	
</body>
</html>