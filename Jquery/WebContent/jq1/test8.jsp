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
			
			//h2 태그의 배경색을 모두 다르게 설정
			//red, blue, green, orange, pink
			
			/* var arr = ['red', 'blue','green','orange', 'pink'];
			
			$('h2').css('background',function(idx){
				return arr[idx];
			});
			*/
			
			
			// h2 요소에 하나하나 접근해서 각각의 요소에 클래스명을 부여
			$('h2').each(function(index){
				
				//addClass(클래스명) : 해당 요소에 클래스명을 부여
				//this : 방문자가 페이지에 방문해서 이벤트를 발생시킬 때마다, 해당 요소를 가리키는 레퍼런스
				
				
				$(this).addClass('high_'+index);
			});
			
		});
	
	</script>

<style type="text/css">
	h2{
		background: yellow;
	}
	
	.high_0 {background: yellow;}
	.high_1 {background: orange;}
	.high_2 {background: purple;}
	.high_3 {background: pink;}
	.high_4 {background: aqua;}
	
	}
</style>


</head>
<body>
	<h1>WebContent/jq1/test8.jsp</h1>
	
	<!-- <h2 class="high_0">item-0</h2>
	<h2 class="high_1">item-1</h2>
	<h2 class="high_2">item-2</h2>
	<h2 class="high_3">item-3</h2>
	<h2 class="high_4">item-4</h2> -->
	
	
	<h2>item-0</h2>
	<h2>item-1</h2>
	<h2>item-2</h2>
	<h2>item-3</h2>
	<h2>item-4</h2>


</body>
</html>