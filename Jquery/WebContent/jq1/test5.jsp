<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script src="../js/jquery-3.6.0.js"></script>
	<script type="text/javascript">
		$(function(){
			//속성의 정보(대상의 값)를 가져오기
			//html() : 해당하는 요소(가장 처음대상) 하나의 값만 가져옴
			//text() : 해당하는 모든 요소의 값을 가져옴
			
			//h2 태그의 값을 가져와서 출력
			var ht = $('h2').html();
			//alert(ht);
			alert(ht+"@@@@");
			
			
			var tx = $('h2').text();
			alert(tx);
			
			
			//요소의 값을 변경
			$('h2').text("아이티윌!!!");
			$('h2').text(ht+"@@@@");
			$('h2').html("안녕하세요");
			
			$('div').html("<h3>html Method() 사용</h3>");
			// => 기존의 값을 변경시(태그) 해당 요소를 적용해서 변경
			
			$('#d').text("<h3>text Method() 사용</h3>");
			// => 기존의 값을 변경해서 새로운 텍스트로 변경
		
			//div 안에 들어가는 값을 변경
			// "인덱스+**+기존의 문자+@@" 변경후 화면에 출력
			
			//$('div').text(function(index,text){
				//alert(index+"//"+text);
			//	return index+"**"+text+"@@";
			//});
			
			$('div').html(function(index,text){
				//alert(index+"//"+text);
				return index+"**"+text+"!!";
			});
			
			
		
		});
		
	</script>
</head>
<body>
	<h1>WebContent/jq1/test5.jsp</h1>
	
	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2>head-2</h2>
	
	<hr>
	
	<div id="d">000</div>
	<div>111</div>
	<div>222</div>
	
	
</body>
</html>