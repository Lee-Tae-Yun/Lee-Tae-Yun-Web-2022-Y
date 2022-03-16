<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.time.*"
    %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>나의 첫 JSP</title>
</head>
<body>
	<h2>안뇽하세요 케케케케</h2>
	<%
	out.println("현재 날짜 : " + LocalDate.now());
	%>
	<br>
	<br>
	현재 시간 :  <%= LocalTime.now() %>
	
	
</body>
</html>