<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <%
    // 1: 기존의 세션 데이터를 모두 삭제
    session.invalidate();
    
%>

    <title>로그아웃</title>
</head>

<body>
    <script>
        window.alert("로그아웃 됐습니다!!");
        location.href = "index.jsp";
    </script>
</body>

</html>