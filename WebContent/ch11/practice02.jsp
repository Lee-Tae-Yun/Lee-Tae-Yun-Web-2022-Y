<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String list[] = {"moon","sun","jupiter","mars","venus","mercury"};
pageContext.setAttribute("list",list);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> 
	<title>JSTL 실습</title>
</head>
<body>
	<c:out value = "안녕하세요!!!"/> <%="안녕하세요!!@" %> 안녕하세요@@!! ${"안녕세요$$@!!"}<br>
	<c:set var = "id" value = "taeyun" />
	${id}<br>
	<c:out value="${id}"/>
	
	<c:set var ="id2" value = "gildong" />
	<c:set var = "income" value = "2000000" />
	<br>
	<c:out value = "${id2}의 수입은  ${income}\ 입니다."/>
	<br>
	<c:if test = "${income > 4000}" var = "a">
	<c:out value="${income}"/>입니다!
	${a}
	</c:if>
	<br>
	

	<c:if test = "${empty param.score}" var="b">
	<c:out value="매개변수가없습니다!!"></c:out>
	</c:if>
	<c:if test = "${!empty param.score}" var="b">
	<c:out value="${param.score}!!"/>
	</c:if>
	<br>
	${empty param.score ? "비었어요!" : param.score }
	
	<c:forEach var="c" items="${lsit}">
	${c}<br>
	</c:forEach><br>
	${list[0]}<br>
	
</body>
</html>