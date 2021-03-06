<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import = "java.sql.*"    
%>
<%
	String btitle = request.getParameter("btitle");
    
	// Context 객체얻기
	Context initCtx = new InitialContext();
	// "java:comp/env" 에 해당하는 객체를 찾아서 envCtx에 삽입
	Context envCtx = (Context)initCtx.lookup ("java:comp/env");
	// "jdbc/taeyun" 에 해당하는 객체를 찾아서 ds에 삽입
	DataSource ds = (DataSource)envCtx.lookup("jdbc/taeyun");
	// 커넥션 풀로 부터 커넥션 객체를 얻어냄
	Connection con = ds.getConnection();

      //3. 연결 설정
   String sql = "select * from mbtiborad where btitle=?";
   PreparedStatement pstmt = con.prepareStatement(sql);
   pstmt.setString(1, btitle);
   ResultSet rs = pstmt.executeQuery();
   String num = "";
   String bname = "";
   String bdate = "";
   String boradview = "";
   String boradtype = "";
   String borad = "";
   

   
   



   if(rs.next()){
		 num = rs.getString("num");
		 bname = rs.getString("bname");
		 bdate = rs.getString("bdate");
		 boradview = rs.getString("boradview");
		 boradtype = rs.getString("boradtype");
		 borad = rs.getString("borad");

	      
   }
   
   rs.close();
   pstmt.close();
   con.close();
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>로그인</title>
  <meta charset="utf-8">
<body>

<div class="container">
  <h2>글쓰기 화면</h2>
  <form action="updatebPro.jsp" method="post">
    <div class="form-group">
      <label for="id">제목</label>
      <textarea rows="1" cols="20" disabled><%=btitle %></textarea>
    </div> 
    <div class="form-group">
      <label for="id">글쓴이</label>
      <textarea rows="1" cols="20" disabled><%=bname %></textarea>
    </div> 
       <p>
    <div class="form-group">
      <label for="udate">게시판 유형 :</label>
      	<textarea rows="1" cols="20" disabled><%=boradtype %></textarea>
    </div>
    <p>
    <div class="form-group">
      <label for="pNumber">게시판 내용</label>
    <p>
    <textarea rows="30" cols="50" disabled><%=borad %></textarea>
    </div>
    <p>
    <button type="button" class="btn btn-primary" onclick="location.href='updatebForm.jsp?btitle=<%=btitle%>'">수정</button>
    <button type="button" class="btn btn-primary" onclick="location.href='deldatebPro.jsp?btitle=<%=btitle%>'">삭제</button>
    <button type="button" class="btn btn-primary" onclick="location.href='listborad.jsp'">돌아가기</button>
  </form>
</div>

</body>
</html>