<%@page import="cs.mbti.BoradDto"%>
<%@page import="cs.mbti.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import = "java.sql.*"    %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>게시글 삭제</title>
</head>

<body>
    <%
	String bid = request.getParameter("bid");
	LoginDao dao = new LoginDao();
	dao.bdelete(bid);
	//session.invalidate();
	%>

    <script>
        location.href = "typeb.jsp";
    </script>
</body>

</html>