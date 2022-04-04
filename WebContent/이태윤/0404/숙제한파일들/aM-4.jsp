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
	request.setCharacterEncoding("UTF-8");
	String tit = request.getParameter("tit");
	String tval = request.getParameter("tval");
	
	out.print("제목"+tit+"<p>");
	out.print("게시글 내용:"+tval);
	%>
	
</body>
</html>