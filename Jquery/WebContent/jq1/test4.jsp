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
			
			//대상.attr(); 특정 대상의 속성정보를 처리
			var src = $('img').attr('src');
			alert(src);
			
			//1번 이미지의 그림을 2번 이미지의 그림으로 변경
			$('img').attr('src','icon2.png');
			
			//img 태그에 테두리(border) 5씩 설정
			$('img').attr('border','5');
			
			//img 태그마다 border 크기를 각각 5,10,15 형태로 설정
			/* var bor = ['5','10','15'];
			
			$('img').attr('border', function(index){
				
				return bor[index];
			});*/
			
			$('img').attr('border', function(idx){
				//alert(idx);
				return (idx+1)*5;
			});
			
			
			// border-5 width-100, height-200
			$('img').attr({
				'border' : '5',
				'width' : '100',
				'height' : '200'
			});
			
			//border-5, width-100, height-(100,200,300) 설정을 모든 img태그에 설정
			$('img').attr({
				'border' : '5',
				'width' : '100',
				'height' : function(idx){
					return (idx+1)*100
				}
			})
			
			
			
			
			
			
			
			
			
			
		});
	</script>

</head>
<body>
	<h1>WebContent/jq1/test4.jsp</h1>

	<img src="icon1.png">
	<img src="icon2.png">
	<img src="icon3.png">

</body>
</html>