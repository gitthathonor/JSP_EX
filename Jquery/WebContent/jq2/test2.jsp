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
			// 키보드 이벤트
			$('textarea').keyup(function(){
				//alert("@@");
				$('h3').html("글자수 : "+(200-$(this).val().length));
				
				// 기존의 글자색 -> RED
				var value = 200 - $(this).val().length;
				
				if(value >= 0) { // 글자수가 200보다 적다
					$('h3').css('color','black');
				} else { //글자수가 200보다 크다
					$('h3').css('color','red');
				}
				
			});
			
			
			$('form').submit(function(){
				var tmp = $('input').val();
				 alert(tmp);
			});
			
			function func() {
				var id  = document.forms[0].id.value;
				alert(id);
			}
			
			
		});
	</script>

</head>
<body>
	<h1>WebContent/jq2/test2.jsp</h1>
	
	<textarea rows="5" cols="70"></textarea>
	
	<h3> 글자수 : 200 </h3>
	
	<hr>
	<form action="" onsubmit="return func();">
	아이디 : <input type="text" name="id"> 
		<input type="submit" value="전송"> <br> 
	</form>
</body>
</html>