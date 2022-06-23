<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%
    	String id2 = (String)session.getAttribute("id");
    %>
<!DOCTYPE html>
<html>

<head>
    <title>MBTI성격유형 검사</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free singlepage web template created by GraphBerry">
    <meta name="keywords" content="HTML5, Bootstrap 3, CSS3, javascript, PHP, Responsive, Mobile">
    <meta name="author" content="GraphBerry.com" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="css/aaa.css">

</head>

<body>
    <header>
        <div class="primary-menu">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">메뉴</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.jsp">홈</a></li>
                    <%if(id2 == null){%>
                    <li><a href="sign.jsp">회원가입</a></li>
                    <li><a href="login.jsp">로그인</a></li>
                    <%}else{%>
                    <li><a href="update.jsp">마이페이지</a></li>
                    <li><a href="logout.jsp">로그아웃</a></li>
                    <li><a href="sns.jsp">메시지</a></li>
                    <li><a href="typeb.jsp">게시판</a></li>
                    <li><a href="tran.jsp">검사해석</a></li>
                    <%}%>
				
            </ul>
        </div>
    </div>
	 <div>
     <div class="container">
         <div class="row">
            <div class="col-md-8 col-md-offset-2">
				 <form action="result.jsp" class="row">
				    <div class="form-group">
				    
				    	<p><h2>MBTI 테스트</h2><p>
				      		
				      		<p>1. 사람들을 만나는 것을 즐긴다.<!-- E I --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q1" value=3 required>
							      	<input type="radio"  name="q1" value=2 >
							      	<input type="radio"  name="q1" value=1 >
							      	<input type="radio"  name="q1" value=-1 >
							      	<input type="radio"  name="q1" value=-2 >
							      	<input type="radio"  name="q1" value=-3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>2. 실제로 경험하지 않은 일에 공감이 된다.<!-- N S --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q2" value=3 required>
							      	<input type="radio"  name="q2" value=2 >
							      	<input type="radio"  name="q2" value=1 >
							      	<input type="radio"  name="q2" value=-1 >
							      	<input type="radio"  name="q2" value=-2 >
							      	<input type="radio"  name="q2" value=-3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>3. 회사에서 성적은 못내도 열심히 하는 사원에게 혼내기 어렵다.<!-- F T --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q3" value =3 required>
							      	<input type="radio"  name="q3" value =2 >
							      	<input type="radio"  name="q3" value =1 >
							      	<input type="radio"  name="q3" value =-1 >
							      	<input type="radio"  name="q3" value =-2 >
							      	<input type="radio"  name="q3" value =-3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>4. 중요한 일이 생기면 그 일부터 처리한다.<!-- J P --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q4" value=-3 required>
							      	<input type="radio"  name="q4" value=-2 >
							      	<input type="radio"  name="q4" value=-1 >
							      	<input type="radio"  name="q4" value=1 >
							      	<input type="radio"  name="q4" value=2 >
							      	<input type="radio"  name="q4" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>5. 생각보다 행동이 먼저다.<!-- E I --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q5" value=3 required>
							      	<input type="radio"  name="q5" value=2 >
							      	<input type="radio"  name="q5" value=1 >
							      	<input type="radio"  name="q5" value=-1 >
							      	<input type="radio"  name="q5" value=-2 >
							      	<input type="radio"  name="q5" value=-3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>6. 무언가를 배울 땐 실용적이어야 한다.<!-- S N --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q6" value=-3 required>
							      	<input type="radio"  name="q6" value=-2 >
							      	<input type="radio"  name="q6" value=-1 >
							      	<input type="radio"  name="q6" value=1 >
							      	<input type="radio"  name="q6" value=2 >
							      	<input type="radio"  name="q6" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>7. 남의 의견이 자신의 의견과 달라도 이해하려고 한다.<!-- F T --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q7" value= 3 required>
							      	<input type="radio"  name="q7" value= 2 >
							      	<input type="radio"  name="q7" value= 1 >
							      	<input type="radio"  name="q7" value= -1 >
							      	<input type="radio"  name="q7" value= -2 >
							      	<input type="radio"  name="q7" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>8. 평소에 책상이 잘 정리되어 있다.<!-- J P --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q8" value= -3 required>
							      	<input type="radio"  name="q8" value= -2 >
							      	<input type="radio"  name="q8" value= -1 >
							      	<input type="radio"  name="q8" value= 1 >
							      	<input type="radio"  name="q8" value= 2 >
							      	<input type="radio"  name="q8" value= 3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>9. 다른 사람들에게 자기소개를 하기가 어렵다.<!-- I E --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q9" value= -3 required>
							      	<input type="radio"  name="q9" value= -2 >
							      	<input type="radio"  name="q9" value= -1 >
							      	<input type="radio"  name="q9" value= 1 >
							      	<input type="radio"  name="q9" value= 2 >
							      	<input type="radio"  name="q9" value= 3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>10. 익숙한 것보단 새로운 것을 경험하는게 좋다.<!-- N S --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q10" value= 3 required>
							      	<input type="radio"  name="q10" value= 2 >
							      	<input type="radio"  name="q10" value= 1 >
							      	<input type="radio"  name="q10" value= -1 >
							      	<input type="radio"  name="q10" value= -2 >
							      	<input type="radio"  name="q10" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>11. 남에게 조언을 할 때 현실적인 조언을 하는 편이다.<!-- T F --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q11" value= -3 required>
							      	<input type="radio"  name="q11" value= -2 >
							      	<input type="radio"  name="q11" value= -1 >
							      	<input type="radio"  name="q11" value= 1 >
							      	<input type="radio"  name="q11" value= 2 >
							      	<input type="radio"  name="q11" value= 3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>12. 일을 끝냈을 때 결과보다 과정이 즐겁다.<!-- P J --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q12" value= 3 required>
							      	<input type="radio"  name="q12" value= 2 >
							      	<input type="radio"  name="q12" value= 1 >
							      	<input type="radio"  name="q12" value= -1 >
							      	<input type="radio"  name="q12" value= -2 >
							      	<input type="radio"  name="q12" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>13. 여가생활을 보통 실내에서 보낸다<!-- I E --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q13" value= -3 required>
							      	<input type="radio"  name="q13" value= -2 >
							      	<input type="radio"  name="q13" value= -1 >
							      	<input type="radio"  name="q13" value= 1 >
							      	<input type="radio"  name="q13" value= 2 >
							      	<input type="radio"  name="q13" value= 3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>14. 정보를 찾을 때 중요한 정보만 찾는다.<!-- S N --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q14" value= -3 required>
							      	<input type="radio"  name="q14" value= -2 >
							      	<input type="radio"  name="q14" value= -1 >
							      	<input type="radio"  name="q14" value= 1 >
							      	<input type="radio"  name="q14" value= 2 >
							      	<input type="radio"  name="q14" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>15. 친구가 아파서 병원에 갔을 때 어디가 다쳤는지부터 물어본다.<!-- T F --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q15" value= -3 required>
							      	<input type="radio"  name="q15" value= -2 >
							      	<input type="radio"  name="q15" value= -1 >
							      	<input type="radio"  name="q15" value= 1 >
							      	<input type="radio"  name="q15" value= 2 >
							      	<input type="radio"  name="q15" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>16. 종종 상황에 지배되곤 한다.<!-- P J --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q16" value=3 required>
							      	<input type="radio"  name="q16" value= 2 >
							      	<input type="radio"  name="q16" value= 1 >
							      	<input type="radio"  name="q16" value= -1 >
							      	<input type="radio"  name="q16" value= -2 >
							      	<input type="radio"  name="q16" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>17. 활발하다는 말을 자주 듣는다.<!-- E I --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q17" value=3 required>
							      	<input type="radio"  name="q17" value= 2 >
							      	<input type="radio"  name="q17" value= 1 >
							      	<input type="radio"  name="q17" value= -1 >
							      	<input type="radio"  name="q17" value= -2 >
							      	<input type="radio"  name="q17" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>18. 현재에 충실한 것보다 미래를 생각하는게 중요하다.<!-- N S --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q18" value=3 required>
							      	<input type="radio"  name="q18" value= 2 >
							      	<input type="radio"  name="q18" value= 1 >
							      	<input type="radio"  name="q18" value= -1 >
							      	<input type="radio"  name="q18" value= -2 >
							      	<input type="radio"  name="q18" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>19. 내 말에 남이 상처받지 않았으면 한다.<!-- F T --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q19" value=3 required>
							      	<input type="radio"  name="q19" value= 2 >
							      	<input type="radio"  name="q19" value= 1 >
							      	<input type="radio"  name="q19" value= -1 >
							      	<input type="radio"  name="q19" value= -2 >
							      	<input type="radio"  name="q19" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>20. 계획을 체계적으로 한다.<!-- J P --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q20" value= -3 required>
							      	<input type="radio"  name="q20" value= -2 >
							      	<input type="radio"  name="q20" value= -1 >
							      	<input type="radio"  name="q20" value= 1 >
							      	<input type="radio"  name="q20" value= 2 >
							      	<input type="radio"  name="q20" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>21. 혼자만의 시간을 즐긴다.<!-- I E --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q21" value= -3 required>
							      	<input type="radio"  name="q21" value= -2 >
							      	<input type="radio"  name="q21" value= -1 >
							      	<input type="radio"  name="q21" value= 1 >
							      	<input type="radio"  name="q21" value= 2 >
							      	<input type="radio"  name="q21" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>22. 평소에 여러 상상을 하며 시간을 보낸다.<!-- N S --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q22" value=3 required>
							      	<input type="radio"  name="q22" value= 2 >
							      	<input type="radio"  name="q22" value= 1 >
							      	<input type="radio"  name="q22" value= -1 >
							      	<input type="radio"  name="q22" value= -2 >
							      	<input type="radio"  name="q22" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>23. 상대방이 연락을 안보면 내가 무엇을 잘못했는지 생각한다.<!-- F T --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q23" value=3 required>
							      	<input type="radio"  name="q23" value= 2 >
							      	<input type="radio"  name="q23" value= 1 >
							      	<input type="radio"  name="q23" value= -1 >
							      	<input type="radio"  name="q23" value= -2 >
							      	<input type="radio"  name="q23" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>24. 계획에 어긋난 상황이 일어나면 대처하기가 어렵다.<!-- J P --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q24" value= -3 required>
							      	<input type="radio"  name="q24" value= -2 >
							      	<input type="radio"  name="q24" value= -1 >
							      	<input type="radio"  name="q24" value= 1 >
							      	<input type="radio"  name="q24" value= 2 >
							      	<input type="radio"  name="q24" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>25. 행사에는 사람이 많을 수록 좋다<!-- E I --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q25" value=3 required>
							      	<input type="radio"  name="q25" value= 2 >
							      	<input type="radio"  name="q25" value= 1 >
							      	<input type="radio"  name="q25" value= -1 >
							      	<input type="radio"  name="q25" value= -2 >
							      	<input type="radio"  name="q25" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>26. 일은 정확하고 철저하게 임해야 한다.<!-- S N --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q26" value= -3 required>
							      	<input type="radio"  name="q26" value= -2 >
							      	<input type="radio"  name="q26" value= -1 >
							      	<input type="radio"  name="q26" value= 1 >
							      	<input type="radio"  name="q26" value= 2 >
							      	<input type="radio"  name="q26" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>27. 논리적이고 분석적인 편이다.<!-- T F --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q27" value= -3 required>
							      	<input type="radio"  name="q27" value= -2 >
							      	<input type="radio"  name="q27" value= -1 >
							      	<input type="radio"  name="q27" value= 1 >
							      	<input type="radio"  name="q27" value= 2 >
							      	<input type="radio"  name="q27" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>28. 일을 자주 미룬다.<!-- P J --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q28" value=3 required>
							      	<input type="radio"  name="q28" value= 2 >
							      	<input type="radio"  name="q28" value= 1 >
							      	<input type="radio"  name="q28" value= -1 >
							      	<input type="radio"  name="q28" value= -2 >
							      	<input type="radio"  name="q28" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>29. 남이 말을 걸 때 까지 기다리는 편이다.<!-- I E --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q29" value= -3 required>
							      	<input type="radio"  name="q29" value= -2 >
							      	<input type="radio"  name="q29" value= -1 >
							      	<input type="radio"  name="q29" value= 1 >
							      	<input type="radio"  name="q29" value= 2 >
							      	<input type="radio"  name="q29" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>30. 비유적인 표현보단 직관적인 표현을 자주 쓴다.<!-- N S --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q30" value=3 required>
							      	<input type="radio"  name="q30" value= 2 >
							      	<input type="radio"  name="q30" value= 1 >
							      	<input type="radio"  name="q30" value= -1 >
							      	<input type="radio"  name="q30" value= -2 >
							      	<input type="radio"  name="q30" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>31. 감정보단 공정성이 더 중요하다.<!-- F T --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q31" value=3 required>
							      	<input type="radio"  name="q31" value= 2 >
							      	<input type="radio"  name="q31" value= 1 >
							      	<input type="radio"  name="q31" value= -1 >
							      	<input type="radio"  name="q31" value= -2 >
							      	<input type="radio"  name="q31" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>32. 한가지 일이 끝나지 않은 채 추가로 일이 들어와도 큰 문제가 없다.<!-- P J --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q32" value=3 required>
							      	<input type="radio"  name="q32" value= 2 >
							      	<input type="radio"  name="q32" value= 1 >
							      	<input type="radio"  name="q32" value= -1 >
							      	<input type="radio"  name="q32" value= -2 >
							      	<input type="radio"  name="q32" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>33. 오랜기간 동안 집에서 안나가도 괜찮다.<!-- I E --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q33" value= -3 required>
							      	<input type="radio"  name="q33" value= -2 >
							      	<input type="radio"  name="q33" value= -1 >
							      	<input type="radio"  name="q33" value= 1 >
							      	<input type="radio"  name="q33" value= 2 >
							      	<input type="radio"  name="q33" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>34. 잘 때 아무 생각도 하지 않는다.<!-- S N --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q34" value= -3 required>
							      	<input type="radio"  name="q34" value= -2 >
							      	<input type="radio"  name="q34" value= -1 >
							      	<input type="radio"  name="q34" value= 1 >
							      	<input type="radio"  name="q34" value= 2 >
							      	<input type="radio"  name="q34" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>35. 논리적으로 이해가 되어야 공감할 수 있다고 생각한다.<!-- T F --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q35" value= -3 required>
							      	<input type="radio"  name="q35" value= -2 >
							      	<input type="radio"  name="q35" value= -1 >
							      	<input type="radio"  name="q35" value= 1 >
							      	<input type="radio"  name="q35" value= 2 >
							      	<input type="radio"  name="q35" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>36. 돌발 상황에 대처를 잘한다.<!-- P J --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q36" value=3 required>
							      	<input type="radio"  name="q36" value= 2 >
							      	<input type="radio"  name="q36" value= 1 >
							      	<input type="radio"  name="q36" value= -1 >
							      	<input type="radio"  name="q36" value= -2 >
							      	<input type="radio"  name="q36" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>37. 약속을 당일날에 잡아도 괜찮다.<!-- I E --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q37" value= -3 required>
							      	<input type="radio"  name="q37" value= -2 >
							      	<input type="radio"  name="q37" value= -1 >
							      	<input type="radio"  name="q37" value= 1 >
							      	<input type="radio"  name="q37" value= 2 >
							      	<input type="radio"  name="q37" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>38. 무언가를 하기 싫을 때 내가 이 것을 왜하고 있는지 생각하게 된다.<!-- N S --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q38" value=3 required>
							      	<input type="radio"  name="q38" value= 2 >
							      	<input type="radio"  name="q38" value= 1 >
							      	<input type="radio"  name="q38" value= -1 >
							      	<input type="radio"  name="q38" value= -2 >
							      	<input type="radio"  name="q38" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>39. 친구가 약속에 늦었을 때 사과보단 이유가 중요하다.<!-- T F --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q39" value= -3 required>
							      	<input type="radio"  name="q39" value= -2 >
							      	<input type="radio"  name="q39" value= -1 >
							      	<input type="radio"  name="q39" value= 1 >
							      	<input type="radio"  name="q39" value= 2 >
							      	<input type="radio"  name="q39" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>40. 시간 약속만큼은 꼭 지켜야 된다.<!-- P J --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q40" value=3 required>
							      	<input type="radio"  name="q40" value= 2 >
							      	<input type="radio"  name="q40" value= 1 >
							      	<input type="radio"  name="q40" value= -1 >
							      	<input type="radio"  name="q40" value= -2 >
							      	<input type="radio"  name="q40" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>41. 감정보단 공정성이 더 중요하다.<!-- F T --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q41" value=3 required>
							      	<input type="radio"  name="q41" value= 2 >
							      	<input type="radio"  name="q41" value= 1 >
							      	<input type="radio"  name="q41" value= -1 >
							      	<input type="radio"  name="q41" value= -2 >
							      	<input type="radio"  name="q41" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>42. 한가지 일이 끝나지 않은 채 추가로 일이 들어와도 큰 문제가 없다.<!-- P J --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q42" value=3 required>
							      	<input type="radio"  name="q42" value= 2 >
							      	<input type="radio"  name="q42" value= 1 >
							      	<input type="radio"  name="q42" value= -1 >
							      	<input type="radio"  name="q42" value= -2 >
							      	<input type="radio"  name="q42" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>43. 오랜기간 동안 집에서 안나가도 괜찮다.<!-- I E --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q43" value= -3 required>
							      	<input type="radio"  name="q43" value= -2 >
							      	<input type="radio"  name="q43" value= -1 >
							      	<input type="radio"  name="q43" value= 1 >
							      	<input type="radio"  name="q43" value= 2 >
							      	<input type="radio"  name="q43" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>44. 잘 때 아무 생각도 하지 않는다.<!-- S N --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q44" value= -3 required>
							      	<input type="radio"  name="q44" value= -2 >
							      	<input type="radio"  name="q44" value= -1 >
							      	<input type="radio"  name="q44" value= 1 >
							      	<input type="radio"  name="q44" value= 2 >
							      	<input type="radio"  name="q44" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>45. 논리적으로 이해가 되어야 공감할 수 있다고 생각한다.<!-- T F --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q45" value= -3 required>
							      	<input type="radio"  name="q45" value= -2 >
							      	<input type="radio"  name="q45" value= -1 >
							      	<input type="radio"  name="q45" value= 1 >
							      	<input type="radio"  name="q45" value= 2 >
							      	<input type="radio"  name="q45" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>46. 돌발 상황에 대처를 잘한다.<!-- P J --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q46" value=3 required>
							      	<input type="radio"  name="q46" value= 2 >
							      	<input type="radio"  name="q46" value= 1 >
							      	<input type="radio"  name="q46" value= -1 >
							      	<input type="radio"  name="q46" value= -2 >
							      	<input type="radio"  name="q46" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>47. 약속을 당일날에 잡아도 괜찮다.<!-- I E --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q47" value= -3 required>
							      	<input type="radio"  name="q47" value= -2 >
							      	<input type="radio"  name="q47" value= -1 >
							      	<input type="radio"  name="q47" value= 1 >
							      	<input type="radio"  name="q47" value= 2 >
							      	<input type="radio"  name="q47" value=3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>48. 무언가를 하기 싫을 때 내가 이 것을 왜하고 있는지 생각하게 된다.<!-- N S --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q48" value=3 required>
							      	<input type="radio"  name="q48" value= 2 >
							      	<input type="radio"  name="q48" value= 1 >
							      	<input type="radio"  name="q48" value= -1 >
							      	<input type="radio"  name="q48" value= -2 >
							      	<input type="radio"  name="q48" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
						    <p>49. 친구가 약속에 늦었을 때 사과보단 이유가 중요하다.<!-- T F --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q49" value= -3 required>
							      	<input type="radio"  name="q49" value= -2 >
							      	<input type="radio"  name="q49" value= -1 >
							      	<input type="radio"  name="q49" value= 1 >
							      	<input type="radio"  name="q49" value= 2 >
							      	<input type="radio"  name="q49" value= 3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	
				      		<p>50. 시간 약속만큼은 꼭 지켜야 된다.<!-- P J --></p>
						      	<h6>
							      	동의 &nbsp;&nbsp;&nbsp; 
							      	<input type="radio"  name="q50" value=3 required>
							      	<input type="radio"  name="q50" value= 2 >
							      	<input type="radio"  name="q50" value= 1 >
							      	<input type="radio"  name="q50" value= -1 >
							      	<input type="radio"  name="q50" value= -2 >
							      	<input type="radio"  name="q50" value= -3 >
							      	&nbsp;&nbsp;&nbsp;비동의
						      	</h6>
						      	<p></p>
						      	                  
							
					    <button type="submit" class="btn btn-primary" style="border-radius: 12px;">결과보기</button>
					    <button type="button" class="btn btn-primary" onclick="location.href='index.jsp'" style="border-radius: 12px;">뒤로가기</button>
  					</div>
  				</form>
			</div>
  		</div>
  	</div>
  	</div>
</header>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="js/jquery.mixitup.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/smooth-scroll.js"></script>
<script src="js/custom.js"></script>
</body>
</html>