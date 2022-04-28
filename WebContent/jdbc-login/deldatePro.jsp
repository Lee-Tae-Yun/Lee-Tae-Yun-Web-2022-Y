<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import = "java.sql.*"    
%>
<%
   request.setCharacterEncoding("utf-8");

   //클라이언트에서 전달된 데이터
   String id = request.getParameter("id");
   
   //1. jdbc 드라이브 로드
   Class.forName("org.mariadb.jdbc.Driver");      

   //2. 커넥션 객체 얻기
   String url ="jdbc:mariadb://localhost:3333/taeyundb";
   String user="taeyun";
   String password="1111";
   Connection con = DriverManager.getConnection(url, user, password);
   
   //3. SQL문 
   String sql = "DELETE FROM login WHERE id=?";
   
   //4. SQL 실행
   PreparedStatement pstmt = con.prepareStatement(sql);
   System.out.println(sql);
   pstmt.setString(1, id);
   
   int i = pstmt.executeUpdate();

   
   //5.객체 해지
   pstmt.close();
   con.close();
   
   response.sendRedirect("list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
</head>
<body>
  <%=i %>개의 데이터가 삭제됐습니다.
</body>
</html>