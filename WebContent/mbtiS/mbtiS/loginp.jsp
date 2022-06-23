<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>로그인이 필요합니다</title>
</head>

<body>
    <script>
        var result = confirm("MBTI 회원만 이용 가능합니다. 로그인 하시겠습니까?");

        if (result) {
            location.href = "login.jsp";
        } else {
            var result1 = confirm("회원가입을 하시겠습니까?");
            if (result1) {
                location.href = "sign.jsp";
            } else {
                location.href = "index.jsp";
            }
        }
    </script>
</body>

</html>