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
			//요소의 속성값을 가져오기
			
			// 'h2'태그의 글자색 정보를 가져오기
			var c = $('h2').css('color');
			alert(c);
			
			// 'h2' 전부의 글자색을 초록색으로 변경
			$('h2').css('color', 'green');
			$('h2').css('color', '#0055aa');
			
			var c = $('h2').css('color');
			alert(c);
			
			// 속성의 값을 여러개 변경
			var col = ['red','green','blue','orange'];
			
			$('h2').css('color',function(index){
				//alert(index);
				//return 'red';
				return col[index];
				
			});			
			
			$('h2').css('color', 'black');
			$('h2').css('background', 'yellow');
			
			// 체이닝 기법(chaining)
			$('h2').css('color','red').css('background', 'blue');
			
			//한 번에 속성을 여러개 사용
			$('h2').css({
				color : 'green', 
				'background' : 'orange'
			});
			
			// h2 0-3 글자색은 배열의 값으로 변경, 배경색은 h2 전체 yellow 변경
		/* 	var col = ['red', 'blue', 'pink', 'black'];
			
			$('h2').css('color', function(index){
				return col[index];
			}).css('background', 'yellow'); */
			
			$('h2').css({
				color : function(index) {
					return col[index];
				},
				background : 'yellow'
			});
			
			
			
			
		});	
	
	</script>

</head>
<body>
	<h1>WebContent/jq1/test3.jsp</h1>
		
	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2>head-2</h2>
	<h2>head-3</h2>
	<h2>head-4</h2>
	<h2>head-5</h2>
	<h2>head-6</h2>



</body>
</html>