<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>

<form action="4-7.jsp" method="post">
    <table>
        <tr>
            <td>관심언어</td>
            <td>
                <input type="checkbox" name="language" value="PHP">PHP
                <input type="checkbox" name="language" value="JSP">JSP
                <input type="checkbox" name="language" value="ASP.NET">ASP.NET        
            </td>
        </tr>
        
        <tr>
            <td>취미</td>
            <td>
                <select name="hobby" size="4" multiple>
                    <option value="영화">영화</option>
                    <option value="운동">운동</option>
                    <option value="독서">독서</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
    </table>    
    <input type="submit" value="전송"> 
</form>
  
</body>
</html>