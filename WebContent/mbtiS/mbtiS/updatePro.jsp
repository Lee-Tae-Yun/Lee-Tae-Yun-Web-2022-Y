<%@page import="cs.mbti.LoginDto"%>
<%@page import="cs.mbti.LoginDao"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>회원정보 수정</title>
</head>

<body>
    <%
	request.setCharacterEncoding("utf-8");
	//값 가져오기
	String id = request.getParameter("id");
   	String pwd = request.getParameter("pwd");
   	String name = request.getParameter("name");
   	String chacter = request.getParameter("chacter");
   	String udate = request.getParameter("udate");
   	String pNumber = request.getParameter("pNumber");
   	String email = request.getParameter("email");
   	String gender = request.getParameter("gender");
	
   	LoginDao dao = new LoginDao();
   	LoginDto dto = new LoginDto(id,pwd, name, chacter, udate, pNumber, email, gender);
   	dao.update(dto);
   	out.print(id);
   	out.print(pwd);
   	out.print(name);
   	out.print(chacter);
   	out.print(udate);
   	out.print(pNumber);
   	out.print(email);
   	out.print(gender);
	
	%>

    <script>
        window.alert("회원정보 수정 성공!!");
        location.href = "update.jsp";
    </script>

</body>

</html>