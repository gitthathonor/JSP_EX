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
			// append() - 해당 대상의 뒤쪽에 추가
			// prepend() - 해당 대상의 앞쪽에 추가
			// => 특정 대상을 기준으로 앞, 뒤 위치 가능(해당 태그요소를 적용하여 사용가능)
			$('body').append("<h2>append() : 뒤쪽에 추가</h2>");
			$('body').prepend("<h2>prepend() : 앞쪽에 추가</h2>");
			
			//div 3개 생성 - div(index) 정보를 화면에 추가			
			$('div').append(function(index){
				return "("+index+")";
			});
			
			//each() / $.each()
			/* $(요소).each(function(매개변수,...){
				
			});
			
			$.each(요소, function(매개변수, ....){
				
			}); */
			// => 선택한 요소를 순차적으로 접근하는 동작
			
			// 데이터 - 2차원배열-> JSON형태 유사
			var arr = [
				{name:'홍길동1',addr:'부산'},
				{name:'홍길동2',addr:'울산'},
				{name:'홍길동3',addr:'서울'},
				{name:'홍길동4',addr:'제주'},
			];
			
			$.each(arr,function(index,obj){
				//alert(index+"/"+obj);
				//console.log(obj);
				//alert(index+" : " +obj.name+"/"+obj.addr);
				
				//테이블에 배열의 정보를 추가
				//$('table').append("<td>"+obj.name+"</td><td>"+obj.addr+"</td>");
				//$('table').append("<tr><td>"+obj.name+"</td><td>"+obj.addr+"</td></tr>");
				
				
				$('table').append(function(){
					return "<tr><td>"+obj.name+"</td><td>"+obj.addr+"</td></tr>";
					
				});
				
			});
			
			
			// 배열 arr을 사용해서, p태그 안에  이름/주소 형태로 출력
			/* $(arr).each(function(index,obj){
				//alert(obj);
				$('p').append(obj.name+"/"+obj.addr);
			}); */
			
			$('p').append(function(idx){
				var obj = arr[idx];
				
				
				return obj.name+"/"+obj.addr+"@";
			});
			
			
			
			
			
			
		});
	</script>

</head>
<body>
	------------------------------body 시작-------------------------------<br>
	<h1>WebContent/jq1/test6.jsp</h1>
	
	<div>content</div>
	<div>content</div>
	<div>content</div>
	
	<hr>
	<table border="1">
		<tr>
			<td>이름</td>
			<td>주소</td>
		</tr>
	</table>
	
	<hr>
	
	<!-- 이름/주소  -->
		
	<p></p>
	<p></p>
	<p></p>
	
	
	

	------------------------------body 끝-------------------------------<br>
</body>
</html>