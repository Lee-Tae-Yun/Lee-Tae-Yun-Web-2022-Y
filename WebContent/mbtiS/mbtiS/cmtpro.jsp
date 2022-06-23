<%@page import="cs.mbti.CommentDto"%>
<%@page import="java.util.Date"%>
<%@page import="cs.mbti.BoradDto"%>
<%@page import="cs.mbti.LoginDto"%>
<%@page import="cs.mbti.LoginDao"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.util.Date, java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import = "java.sql.*"    
%>
<%
	LoginDao dao = new LoginDao();
  	String id2 = (String)session.getAttribute("id");
   	request.setCharacterEncoding("utf-8");
   	LoginDto dtos = dao.readDate(id2);
   	int bid = Integer.parseInt(request.getParameter("no"));
   	BoradDto dtoss = dao.readBDate(bid);
   	Date from = new Date();SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");String to = transFormat.format(from);
   	//클라이언트에서 전달된 데이터
   	String cnum = "";
   	String uid = id2;
   	String cbid = request.getParameter("no"); 
   	String cname = dtos.getName();
   	String cmt  = request.getParameter("comment");
   	String chacter = dtos.getChacter();
   	String cdate = to;
   
   CommentDto dto = new CommentDto(cnum,uid,cbid,cname,cmt,chacter,cdate);
   dao.insertC(dto);

   
   response.sendRedirect("typeb.jsp");
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>
    </title>
</head>

<body>
    <%=cnum %><br>
    <%=uid %><br>
    <%=cbid %><br>
    <%=cname %><br>
    <%=cmt %><br>
    <%=chacter %><br>
    <%=cdate %><br>



</body>

</html>