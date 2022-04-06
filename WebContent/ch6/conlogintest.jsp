<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>login 데이터 조회</title>
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
		String sql = "select * from login2";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
	//4. 반환 데이터 출력	
		while(rs.next()){
			out.println(rs.getString("id"));
			out.println(rs.getString("pw"));
			out.println("<br>");
		}
	//객체 해제
		rs.close();
		stmt.close();
		con.close();
		

%>
</body>
</html>