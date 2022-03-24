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
	String[] language = request.getParameterValues("language");
	String[] hobby = request.getParameterValues("hobby");

	for(int i=0;i<language.length;i++){
		out.println(language[i]+"<br>");
	}
	for(int i=0;i<hobby.length;i++){
		out.println(hobby[i]+"<br>");
	}
%>
</body>
</html>