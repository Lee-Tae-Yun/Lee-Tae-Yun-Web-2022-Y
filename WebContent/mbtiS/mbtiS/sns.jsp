<%@page import="cs.mbti.LoginDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cs.mbti.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    %>
<%
    	String id2 = (String)session.getAttribute("id");

		LoginDao dao = new LoginDao();
		ArrayList<LoginDto> dtos = dao.list();
		pageContext.setAttribute("dtos",dtos);

%>
    
<!DOCTYPE html>
<html>

<head>
    <title>메시지</title>
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
                    <li><a data-scroll href="#">메시지</a></li>
                    <li><a href="typeb.jsp">게시판</a></li>
                    <li><a href="tran.jsp">검사해석</a></li>
                    <%}%>
            </ul>
        </div>
    </div>
    
<section class="portfolio" id="portfolio">
    <div class="container" id="portfolio-grid">
        <nav class="centered-pills clearfix">
            <ul class="nav nav-pills" >
                <li><a href="javascript:void(0);" class="filter active" data-filter="all">All</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".INTJ">INTJ</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".INTP">INTP</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".ENTJ">ENTJ</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".ENTP">ENTP</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".INFJ">INFJ</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".INFP">INFP</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".ENFJ">ENFJ</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".ENFP">ENFP</a></li>
            </ul>
		</nav>
        <nav class="centered-pills clearfix" style="margin-bottom:-30px;margin-top: -50px">
            <ul class="nav nav-pills" >
                <li><a href="javascript:void(0);" class="filter" data-filter=".ISTJ">ISTJ</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".ISFJ">ISFJ</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".ESTJ">ESTJ</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".ESFJ">ESFJ</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".ISTP">ISTP</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".ISFP">ISFP</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".ESTP">ESTP</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".ESFP">ESFP</a></li>
            </ul>
        </nav>
        <div class="row">
           	<div >
           	  <div class="row">
           	  <%for(LoginDto dto : dtos) {%>
		           <div class="mix all <%=dto.getChacter()%> col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='insns.jsp'"><%=dto.getChacter()+" "+dto.getName()%></h6>
		            </div>
		     <%}%>
              </div>
       		</div>
    	</div>
    </div>
</section>
</header>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="js/jquery.mixitup.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/smooth-scroll.js"></script>
<script src="js/custom.js"></script>
</body>
</html>