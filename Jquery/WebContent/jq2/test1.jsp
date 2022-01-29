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
			//이벤트 처리 - bind();
			
			$('input').bind('click',function(){
				alert('버튼클릭-JQ');
			});
			
			$('input').click(function(){
				alert('버튼클릭 - JQ(click)');
			});
			
			$('h2').click(function(){
				//해당 태그 뒤에 + 기호 추가
				//$('h2').append('+');
				//$(this).append('+');
				$(this).html(function(index,html){
					return html+"+";
				});
			
			});
		
			
			// h2 마우스를 올렸을 때 배경색
			/* $('h2').mouseover(function(){
				$(this).css('background', 'yellow');
			});
			
			$('h2').mouseout(function(){
				$(this).css('background','green');
				//$(this).attr('background', 'white');
			}); */
			
			/* $('h2')
			.mouseover(function(){
				$(this).css('background', 'yellow');
			})
			.mouseout(function(){
				$(this).css('background','green');
				//$(this).attr('background', 'white');
			});
			 */
			
			$('h2').bind({
				mouseover : function(){
					$(this).css('background', 'yellow');
				},
				mouseout : function(){
					$(this).css('background','green');
				}
			});
			
			
			
			
			
			
		
		
		
		
		
		
		
		
		});
	</script>
</head>
<body>
	<h1>WebContent/jq2/test1.jsp</h1>
	
	
	
	<input type="button" value="버튼" onclick="alert('버튼클릭! - js');">
	<hr>
	
	
	<!-- h2 클릭시 마다 + 기호 추가 -->
	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2>head-2</h2>




</body>
</html>