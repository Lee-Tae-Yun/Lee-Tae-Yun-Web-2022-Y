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
   	Date from = new Date();SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");String to = transFormat.format(from);
   	//클라이언트에서 전달된 데이터
   	String bid = "";
   	String boradtype = dtos.getChacter();
   	String btitle = request.getParameter("btitle");
   	String borad = request.getParameter("borad");
   	String bname = dtos.getName();
   	String bdate = to;
   	int boradview = 0;
   	String uid = id2;
   	BoradDto dto = new BoradDto(bid,uid,boradtype,btitle,borad,bname,bdate,boradview);
   	dao.insertB(dto);

   
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
    <%=bid %><br>
    <%=boradtype %><br>
    <%=btitle %><br>
    <%=borad %><br>
    <%=bname %><br>
    <%=bdate %><br>
    <%=boradview %><br>
    <%=uid %><br>


</body>

</html>