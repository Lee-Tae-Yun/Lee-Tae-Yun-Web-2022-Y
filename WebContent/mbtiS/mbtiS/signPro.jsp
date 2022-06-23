<%@page import="cs.mbti.LoginDto"%>
<%@page import="cs.mbti.LoginDao"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import = "java.sql.*"    
%>
<%
   request.setCharacterEncoding("utf-8");

   //클라이언트에서 전달된 데이터
   String id = request.getParameter("id");
   String pwd = request.getParameter("pwd");
   String name = request.getParameter("name");
   String chacter = request.getParameter("chacter");
   String udate = request.getParameter("udate");
   String pNumber = request.getParameter("pNumber");
   String email = request.getParameter("email");
   String gender = request.getParameter("gender");
   
   
   LoginDao dao = new LoginDao();
   LoginDto dto = new LoginDto(id, pwd, name, chacter, udate, pNumber, email, gender);
   dao.insert(dto);
   %>

<script>
    window.alert("회원가입을 축하합니다!!");
    location.href = "login.jsp";
</script>


<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <%=name %>개의 데이터가 입력되었습니다!
</body>

</html>