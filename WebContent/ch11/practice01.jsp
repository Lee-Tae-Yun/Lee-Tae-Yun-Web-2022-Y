<%@page import="java.util.List"%>
<%@page import="java.util.LinkedList"%>
<%@page import="cs.dit.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
LoginDto dto = new LoginDto("taeyun","태윤","1111");

pageContext.setAttribute("dto", dto);

String list[] = {"moon","sun","jupiter","mars","venus","mercury"};
pageContext.setAttribute("list",list);

List<String> namelist = new LinkedList<String>();
namelist.add("이태윤");
namelist.add("정승찬");
namelist.add("조현아");
pageContext.setAttribute("namelist",namelist);

String value = request.getParameter("v");
Cookie mycookie = new Cookie("v","Happy");
response.addCookie(mycookie);

session.setAttribute("a","Happy day");


%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EL 실습</title>
</head>
<body>
	쿠   키: ${cookie.v.value}
	<br>
	세   션: ${sessionScope.a}님 반갑습니다!!
	<br>
	문자열: ${"반갑습니다."}
	<br>
	연산자: ${100+200}
	<br>
	비   교: ${100>200}
	<br>
	내장객체(param): ${param.name}
	<br>
	empty : ${empty param.name}
	<br>
	삼항 연산 : ${!empty param.name ? param.name: "매개변수가 비어있어요." }
	 
	<hr>
	ID: ${dto.id}<br>
	NAME:${dto.name}<br>
	PWD:${dto.pwd}<br>
	<hr>
	프로토콜 : ${pageContext.request.protocol }<br>
	서버명: ${pageContext.request.serverName }<br>
	
	
</body>
</html>