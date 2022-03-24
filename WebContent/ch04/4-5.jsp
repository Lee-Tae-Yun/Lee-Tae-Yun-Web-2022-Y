<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw =request.getParameter("pw");
	String gender =request.getParameter("gender");
	String intro =request.getParameter("intro");
	String addr =request.getParameter("addr");
	String memo =request.getParameter("memo");
	%>

	아이디 : <%=id %><br>
	비밀번호 : <%=pw %><br>
	성별 : <%=gender %><br>
	가입경로 : <%=intro %><br>
	주소 : <%=addr %><br>
	메모 : <%=memo %><br>
</body>
</html>