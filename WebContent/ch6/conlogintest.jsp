<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>login 데이터 조회</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<table class = class="container">
	<tr>
		<th>id </th>
		<th>pw</th>
	</tr>
	<tr>

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
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			
	%>			
			<td> <%=id%> </td>
			<td> <%=pw%> </td>
			</tr>
	<%		
			
		}
	%>
	</table>
	
<%
	//객체 해제
		rs.close();
		stmt.close();
		con.close();
%>		


</body>
</html>