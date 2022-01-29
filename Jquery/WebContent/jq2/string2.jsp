<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- <h1>WebContent/jq2/string2.jsp</h1> -->
	
	<% 
		System.out.println("string2.jsp 페이지 호출");
		//html 페이지에서 전달한 데이터 받아서 출력
		String name = request.getParameter("name");
		System.out.println(name);
		int age = Integer.parseInt(request.getParameter("age"));
		System.out.println(age);
	%>
	<h2>-----string2.jsp에서 처리된 결과-------------</h2>
	<h2>이름 : <%=name %></h2>
	<h2>나이 : <%=age %></h2>
	<h2>-----string2.jsp에서 처리된 결과-------------</h2>