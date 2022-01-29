<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
	<%
		//1. 드라이버 로드
		Class.forName("com.mysql.cj.jdbc.Driver");
		//2. DB 연결
		Connection con = 
			DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
		
		//3. sql 작성 & pstmt 생성
		String sql = "select id, name, email from itwill_member";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		//4. 실행
		ResultSet rs = pstmt.executeQuery();
		
		//5. 데이터 처리 (DB데이터를 JSON으로 변경)
		
		// JSON 배열 객체 생성
		JSONArray arr = new JSONArray();
		
		while(rs.next()) {
			JSONObject obj = new JSONObject();
			obj.put("id", rs.getString("id"));
			obj.put("name", rs.getString("name"));
			obj.put("email", rs.getString("email"));
			
			// 객체  -> 배열 한 칸에 저장
			arr.add(obj);
			
		}
	%>
	
	<%=arr %>
	
	
	
	
