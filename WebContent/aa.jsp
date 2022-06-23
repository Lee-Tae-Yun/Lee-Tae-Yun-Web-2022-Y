<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.time.*"
    %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>나의 첫 JSP</title>
</head>
<body>
	<h2>안뇽하세요 케케케케</h2>
	<%
	out.println("현재 날짜 : " + LocalDate.now());
	%>
	<br>
	<br>
	현재 시간 :  <%= LocalTime.now() %>
	<table border = "1">
				   				<thead>
				   					<tr>
				   						<th>게시판유형</th>
				   						<th>제목</th>
				   						<th>작성일자</th>
				   						<th>댓글수</th>
				   						<th>작성자</th>
				   						<th>조회수</th>
				   					</tr>
				   				</thead>
							      	<tr>
								         <td>M</td>
								         <td>이런사람?</td>
								         <td>2022-10-11</td>
								         <td>5</td>
								         <td>김민석</td>
								         <td>10</td>
							      	</tr>
							      	<tr class="mix all B">
								         <td>M</td>
								         <td>이런사람?</td>
								         <td>2022-10-11</td>
								         <td>5</td>
								         <td>김민석</td>
								         <td>10</td>
							      	</tr>
							      	<tr class="mix all T">
								         <td>M</td>
								         <td>이런사람?</td>
								         <td>2022-10-11</td>
								         <td>5</td>
								         <td>김민석</td>
								         <td>10</td>
							      	</tr>
							      	
							   </table>
							</div>     
            			</div>
	
</body>
</html>