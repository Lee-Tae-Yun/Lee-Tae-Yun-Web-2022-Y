<%@page import="cs.mbti.LoginDto"%>
<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="cs.mbti.LoginDao"%>

<%
	//한글처리 
	request.setCharacterEncoding("utf-8");
	//값 가져오기
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//DB연동 으로 테이블에서 가져온 ID와 PWD가 일치하는지 판별
	LoginDao dao = new LoginDao();
	int check = dao.checkUser(id, pwd);
	LoginDto dtos = dao.readDate(id);
	
	if (check == 1){
		String name = dtos.getName();
		session.setAttribute("id", id);
		session.setAttribute("name",name);
	%>
<script>
    window.alert("로그인 성공!!");
    location.href = "index.jsp";
</script>
<%
	}
	else{
	%>
<script>
    alert("아이디 또는 비밀번호가 일치하지 않습니다.");
    location.href = "login.jsp";
</script>
<% 
	}
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>로그인</title>

</head>

<body>

</body>

</html>