<%@page import="cs.dit.LoginDto"%>
<%@page import="cs.dit.LoginDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%
   	LoginDao dao = new LoginDao();
    ArrayList<LoginDto> dtos = dao.list();
    pageContext.setAttribute("dtos",dtos);
%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>login 데이터 조회</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
   <h2 style = "text-align:center">회원 목록 조회</h2>
<div class="container">
   <table class="table table-bordered">
      <tr>
         <th>id</th>
         <th>name</th>
         <th>pwd</th>
      </tr>
      <tr>
<%   
      //4. 반환데이터 출력
	for(LoginDto dto : dtos) {
%>
         <td><a href="updateForm.jsp?id=<%=dto.getId() %>"><%=dto.getId() %></a></td>
         <td><%=dto.getName() %></td>
         <td><%=dto.getPwd() %></td>
      </tr>
<%
	}
%>
		<c:forEach var = "dto" items ="${list}">
		 	<tr>
				<td><a href="updateForm.jsp?id=${dtos.id}">${dtos.id}</a></td>
				<td>${dtos.name}</td>
		    	<td>${dtos.pwd}</td>
		     </tr>
		</c:forEach>     
   </table>
</div>

</body>
</html>





