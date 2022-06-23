<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    %>
<%
    	String id2 = (String)session.getAttribute("id");
    	String name2 = (String)session.getAttribute("name");
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
                    <li><a data-scroll href="#">홈</a></li>
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
				<li><a href="list.jsp">회원목록</a></li>
				
            </ul>
        </div>
    </div>

    <div class="main-head">
     <div class="container">
         <div class="row">
            <div class="col-md-8 col-md-offset-2">
            <% 
            if(id2!=null){
    		out.println("반갑습니다 "+name2+"님");
  		}
  		%>
                    <h4>재미로보는 성격유형 검사</h4>
                    <div class="divider"></div>
                    <h1>MBTI 성격 유형 검사 하기!!</h1>
                    <%if(id2 !=null) { %>
                    <a href="survey.jsp" class="btn btn-primary btn-lg" style="border-radius: 12px;">MBTI TEST START</a>
                    <%}  else {%>
                    <a href="loginp.jsp" class="btn btn-primary btn-lg" style="border-radius: 12px;">MBTI TEST START</a>
                    <%} %>
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