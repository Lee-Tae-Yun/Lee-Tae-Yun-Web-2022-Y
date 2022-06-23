<%@page import="cs.mbti.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import = "java.sql.*"    %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>회원탈퇴</title>
</head>

<body>
    <%
	
	String id2 = (String)session.getAttribute("id");
	LoginDao dao = new LoginDao();
	dao.delete(id2);
	session.invalidate();
	%>
    <script>
        location.href = "index.jsp";
    </script>
</body>

</html>