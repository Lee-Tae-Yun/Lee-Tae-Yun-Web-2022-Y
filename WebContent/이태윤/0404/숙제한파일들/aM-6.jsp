<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String nicname = request.getParameter("Nicname");
	String bdate = request.getParameter("Bdate");
	String tel = request.getParameter("tel");
	String id = request.getParameter("id");
	String pw =request.getParameter("pw");
	String email = request.getParameter("emal");
	String gender =request.getParameter("gender");
	String intro =request.getParameter("intro");
	String addr =request.getParameter("addr");
	String[] trip = request.getParameterValues("Trip");
	String[] hobby = request.getParameterValues("hobby");
	String memo =request.getParameter("memo");

	out.print("이름 :"+nicname+"<br>");
	out.print("생년월일 :"+bdate+"<br>");
	out.print("전화번호 :"+tel+"<br>");
	out.print("아이디  :"+id+"<br>");
	out.print("비밀번호 :"+pw+"<br>");
	out.print("이메일 :"+email+"<br>");
	out.print("성별 :"+gender+"<br>");
	out.print("가입경로 :"+intro+"<br>");
	out.print("주소 : "+addr+"<br>");
	out.print("여행가고싶은곳 :");
	for(int i=0;i<trip.length;i++)	{
		out.println(trip[i]);
		if(i==trip.length-1){
			continue;
		}
		out.print(",");
	}
	out.print("<br>");
	
	out.print("취미 :");
	for(int i=0;i<hobby.length;i++)	{
		out.println(hobby[i]);
		if(i==hobby.length-1){
			continue;
		}
		out.print(",");
	}
	out.print("<br>");
	
	out.print("메모 :"+ memo+"<br>");
 %>	
</body>
</html>