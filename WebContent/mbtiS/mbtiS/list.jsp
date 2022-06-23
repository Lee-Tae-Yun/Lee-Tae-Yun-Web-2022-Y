<%@page import="cs.mbti.LoginDto"%>
<%@page import="cs.mbti.LoginDao"%>
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
    <h2 style="text-align:center">회원 목록 조회</h2>
    <div class="container">
        <table class="table table-bordered">
            <tr>
                <th>아이디</th>
                <th>비밀번호</th>
                <th>이름</th>
                <th>성격유형</th>
                <th>생년월일</th>
                <th>전화번호</th>
                <th>이메일</th>
                <th>성별</th>
            </tr>
            <%   
      //4. 반환데이터 출력
	for(LoginDto dto : dtos) {
%>
            <tr>
                <td><%=dto.getId() %></td>
                <td><%=dto.getPwd() %></td>
                <td><%=dto.getName() %></td>
                <td><%=dto.getChacter() %></td>
                <td><%=dto.getUdate() %></td>
                <td><%=dto.getpNumber() %></td>
                <td><%=dto.getEmail() %></td>
                <td><%=dto.getGender() %></td>
            </tr>

            <%
	}
%>
        </table>
    </div>

</body>

</html>