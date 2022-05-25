<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="cs.dit.LoginDao"%>
<%
	//한글처리 
	request.setCharacterEncoding("utf-8");
	//값 가져오기
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//DB연동 으로 테이블에서 가져온 ID와 PWD가 일치하는지 판별
	LoginDao dao = new LoginDao();
	int check = dao.checkUser(id, pwd);
	
	if (check == 1){
		session.setAttribute("id", id);
		out.print("WelCome!!!");
	}
	else{
		out.print("ByeBye!!!");

	}
	response.sendRedirect("loginForm.jsp");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
</head>
<body>

	<h1>반갑습니다.</h1>
</body>
</html>