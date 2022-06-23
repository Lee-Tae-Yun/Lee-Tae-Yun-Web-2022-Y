<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    %>
<%
    	String id2 = (String)session.getAttribute("id");
    %>

<!DOCTYPE html>
<html>

<head>
    <title>회원가입</title>
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
                    <li><a data-scroll href="#">회원가입</a></li>
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

     <div class="container">
         <div class="row">
         <h1>MBTI 회원가입</h1>
         <p>
            <div class="col-md-8 col-md-offset-2">
				  <form action="signPro.jsp" class="row">
		    		<div class="form-group" >
				      <label for="id">= 아이디 =</label>
				      <input type="text" class="form-control" placeholder="Enter MAX ID 20" name="id" maxlength='20' required>
				    </div> 
				       
				    <div class="form-group">
				      <label for="pwd">= 비밀번호 =</label>
				      <input type="password" class="form-control" placeholder="Enter MAX PW 20" name="pwd" maxlength='20' required>
				    </div>
				    
				    <div class="form-group">
				      <label for="name">= 이름 =</label>
				      <input type="text" class="form-control" placeholder="Enter NAME" name="name" maxlength='20' required>
				    </div> 
				    <div class="form-group">
				      <label for="chacter">= 성격유형 =</label>
				      <input type="text" class="form-control" placeholder="Enter MBTI" name="chacter" maxlength='20' value="MBTI" readonly>
				    </div>    
				    
				    <div class="form-group">
				      <label for="udate">= 생년월일 =</label>
				      <input type="date" class="form-control" name="udate" required>
				    </div>
				    
				    <div class="form-group">
				      <label for="pNumber">= 전화번호 =</label>
				      <input type="text" class="form-control" placeholder="Ex)010-1234-5678" name="pNumber" maxlength='13' required>
				    </div>
				    
				       <div class="form-group">
				      <label for="email">= 이메일 =</label>
				      <input type="email" class="form-control" placeholder="Enter MAX EMAIL 50" name="email" maxlength='50' required>
				    </div>    
				    
				    <div class="form-group">
				      <label for="gender">= 성별 = </label>
				     	<input type="radio" required class="form-control" name = "gender" value="남자" checked>남자     
						<input type="radio" required class="form-control" name = "gender" value="여자">여자
				    </div>
				    
				    <div class="form-group form-check">
				      <label class="form-check-label">
				        <input class="form-check-input" type="checkbox" name="remember" required><h6>MBTI 회원이 되는 것에 동의하시면 눌러주세요.</h6>
				    </label>
				    </div>
				    
				    <button type="submit" class="btn btn-primary" style="border-radius: 12px;">확인</button>
				    <button type="button" class="btn btn-primary"  onclick="location.href='index.jsp'" style="border-radius: 12px;">취소</button>
				  </form>
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