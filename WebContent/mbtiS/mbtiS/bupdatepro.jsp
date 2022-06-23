<%@page import="cs.mbti.BoradDto"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
    <title>게시글 수정</title>
</head>

<body>
    <%
	request.setCharacterEncoding("utf-8");
   	Date from = new Date();SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");String to = transFormat.format(from);

   	System.out.println(to);
	//값 가져오기
	String bid = request.getParameter("bid");
	
   	String btitle = request.getParameter("btitle");
   	String borad = request.getParameter("borad");
   	String bdate = to;

	
   	LoginDao dao = new LoginDao();
   	dao.bupdate(btitle, borad, bdate, bid);
   	out.print(bid+"<br>");
   	out.print(btitle+"<br>");
   	out.print(borad+"<br>");
   	out.print(bdate+"<br>");
	
	%>

    <script>
        window.alert("게시글 정보 수정 성공!!");
        location.href = "typeb.jsp";
    </script>

</body>

</html>