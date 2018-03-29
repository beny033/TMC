<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 	
		
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/board";
			String uid = "root";
			String upw = "1234";
			
			String id , pw, cpw, email;
			
			id = request.getParameter("id");
			pw = request.getParameter("pw");
			cpw = request.getParameter("cpw");
			email = request.getParameter("email");
			
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			String rsSql = "select * from user where  id = '" + id + "' ";
			
			String sql = "insert into user (id,pw,cpw,email) values ( '" + id + "' , '" + pw + "' , '" + cpw + "' , '" + email + "') ";
			
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, uid, upw);
				stmt = conn.createStatement();
				
				rs = stmt.executeQuery(rsSql);
				
				
				while ( rs.next()) {
					response.sendRedirect("id_duplication.html");
				}
				
				int i = stmt.executeUpdate(sql); 
				
				if( i == 1 && pw.equals(cpw)) {
						out.println("insert sucess");
						response.sendRedirect("index.html");
					}else {
						response.sendRedirect("pwError.html");
					}
				
				
			}catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if( rs != null) rs.close();
					if( stmt != null) stmt.close();
					if( conn != null ) conn.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		
			%>

</body>
</html>