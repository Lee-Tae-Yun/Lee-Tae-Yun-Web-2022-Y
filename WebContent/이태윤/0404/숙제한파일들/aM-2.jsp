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
	request.setCharacterEncoding("UTF-8");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	
	int kor1 = Integer.parseInt(kor);
	int eng1 = Integer.parseInt(eng);
	int math1 = Integer.parseInt(math);
	float av = (float)(kor1+eng1+math1)/3;
	
	out.println("국어점수:"+kor1+"<br>");
	out.println("영어점수:"+eng1+"<br>");
	out.println("수학점수:"+math1+"<br>");
	out.println("평균점수:"+String.format("%.2f",av)+"<br>");
	%>
	
	
	
</body>
</html>