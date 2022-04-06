<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%
		//1. jdbc 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
		//2. 연결통로(connection) 얻기
		String url = "jdbc:mariadb://localhost:3333/taeyundb";
		String user = "taeyun";
		String password = "1111";
		Connection con = DriverManager.getConnection(url, user, password);
		//3. DB연결
		con.createStatement();
		out.print("연결성공");
		//객체 해제
		//stmt.close();
		con.close();
	%>
</body>
</html>