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
	//사용자가 입력한값을 전달하기
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//1. jdbc 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
	//2. 연결통로(connection) 얻기
		String url = "jdbc:mariadb://localhost:3333/taeyundb";
		String user = "taeyun";
		String password = "1111";
		Connection con = DriverManager.getConnection(url, user, password);
		
	//3. SQL문
		String sql = "insert into login2(id,pw) values(?,?)";

	//4. SQL 실행
		//Statement stmt = con.createStatement();
		PreparedStatement pstmt = con.prepareStatement(sql);
		//int i = stmt.executeUpdate(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		
		int i = pstmt.executeUpdate();
		
	//5. 객체 해제

		pstmt.close();
		con.close();
		
		response.sendRedirect("conlogintest.jsp");
%>
<%=i %>개의 데이터가 입력됐습니다.
</body>
</html>