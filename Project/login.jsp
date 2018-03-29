<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
		<%!
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			String url = "jdbc:mysql://localhost:3306/board";
			String driver = "com.mysql.jdbc.Driver";
			String uid = "root";
			String upw = "1234";
			String id;
			String pw;
			String sql;  
		%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
			<%
				id = request.getParameter("id");
				pw = request.getParameter("pw");
				sql = "select * from user where id = '" + id + "' and pw = '" + pw + "'  ";
				
				try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url,uid,upw);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				boolean b = false;
				while(rs.next()) {
	 				id = rs.getString("id");
					pw = rs.getString("pw"); 
					b = true;
				}
				
				if (b) {
				HttpSession http = request.getSession();
					http.setAttribute("id", id);
					http.setAttribute("pw",pw);
					response.sendRedirect("index.jsp");
				}else {
					response.sendRedirect("loginError.html");
				}
				
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					try {
						if( rs != null) rs.close();
						if( stmt != null) stmt.close();
						if( conn != null) conn.close();
					}catch(Exception e2) {
						e2.printStackTrace();
					}
				}
				
				
				
			%>







</body>
</html>