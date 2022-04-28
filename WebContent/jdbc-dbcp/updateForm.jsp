<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*"   
%> 
<%
	String id = request.getParameter("id");
    
	// Context 객체얻기
	Context initCtx = new InitialContext();
	// "java:comp/env" 에 해당하는 객체를 찾아서 envCtx에 삽입
	Context envCtx = (Context)initCtx.lookup ("java:comp/env");
	// "jdbc/taeyun" 에 해당하는 객체를 찾아서 ds에 삽입
	DataSource ds = (DataSource)envCtx.lookup("jdbc/taeyun");
	// 커넥션 풀로 부터 커넥션 객체를 얻어냄
	Connection con = ds.getConnection();

      //3. 연결 설정
   String sql = "select * from login where id=?";
   PreparedStatement pstmt = con.prepareStatement(sql);
   pstmt.setString(1, id);
   ResultSet rs = pstmt.executeQuery();
   String name = "";
   String pwd = "";
   if(rs.next()){
	   name = rs.getString("name");
	   pwd = rs.getString("pwd");
   }
   
   rs.close();
   pstmt.close();
   con.close();
%>
<!DOCTYPE html>
<html lang ="en">
<head>
	<meta charset="UTF-8">
	<title>회원변경</title>
</head>
<body>
<div class="container">
  <h2>회원정보 업데이트</h2>
  <form action="updatePro.jsp" method="post">
    <div class="form-group">
      <label for="id">id:</label>
      <input type="text" class="form-control" id="id" name="id" value ="<%=id %>">
    </div>    
    <div class="form-group">
      <label for="name">name:</label>
      <input type="text" class="form-control" id="name" name="name" value ="<%=name %>">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" name="pwd" value ="<%=pwd %>">
    </div>

    <button type="submit" class="btn btn-primary">저장</button>
    <button type="button" class="btn btn-primary" onclick="location.href='deldatePro.jsp?id=<%=id%>'">삭제</button>
    <button type="button" class="btn btn-primary" onclick="location.herf='list.jsp'">조회</button>
  </form>
</div>

	
</body>
</html>