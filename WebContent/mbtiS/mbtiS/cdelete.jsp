<%@page import="cs.mbti.BoradDto"%>
<%@page import="cs.mbti.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import = "java.sql.*"    %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>댓글 삭제</title>
</head>

<body>
    <%
	int cnum = Integer.parseInt(request.getParameter("cnum"));
	LoginDao dao = new LoginDao();
	dao.cdelete(cnum);
	//session.invalidate();
	%>

    <script>
        location.href = "typeb.jsp";
    </script>
    <%=cnum %>
</body>

</html>