<%@page import="cs.mbti.CommentDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cs.mbti.LoginDao"%>
<%@page import="cs.mbti.LoginDto"%>
<%@page import="cs.mbti.BoradDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    %>
<%
    	request.setCharacterEncoding("utf-8");
    	int bid = Integer.parseInt(request.getParameter("bid"));
    	String ch3 = request.getParameter("boradtype");
    	String cbid = Integer.toString(bid);
    	String id2 = (String)session.getAttribute("id");
		BoradDto dto = new BoradDto();
		LoginDao dao = new LoginDao();
		ArrayList<CommentDto> cdtos = dao.Clist(bid);
		BoradDto dtos = dao.readBDate(bid);

		//int dtoss = Integer.parseInt(dto.getBoradview());
		int count = dao.countUpdate(bid);
         
    %>

<!DOCTYPE html>
<html>

<head>
    <title>게시판 글쓰기</title>
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
    <style>
        div.brt {
            position: relative;
            top: 20px;
            right: 530px;
        }
    </style>
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

     <div class="container">
         <div class="row">
         <h1><%=dtos.getBname()%>님의 글</h1>
                    <p>
                        <div class="col-md-8 col-md-offset-2">
                            <form action="Boinpro.jsp" class="row">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>제목</th>
                                            <th style="text-align:left;">
                                                <h6><%=dtos.getBtitle() %></h6>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr height="20">
                                            <th>작성자</th>
                                            <th style="text-align:left;">
                                                <h6><%=ch3%>&nbsp;&nbsp;&nbsp;&nbsp;<%=dtos.getBname()%></h6>
                                            </th>
                                        </tr>
                                        <br>
                                        <tr height="20">
                                            <th>작성날짜</th>
                                            <th style="text-align:left;">
                                                <h6><%=dtos.getBdate() %></h6>
                                            </th>
                                        </tr>
                                        <br>
                                        <tr height="20">
                                            <th>조회수</th>
                                            <th style="text-align:left;">
                                                <h6><%=dtos.getBoradview() %></h6>
                                            </th>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr height="300">
                                            <th width="150">내용</th>
                                            <th colspan="2" style="text-align:left;">
                                                <h6><%=dtos.getBorad() %></h6>
                                            </th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <button type="submit" class="btn btn-primary" style="border-radius: 12px;">확인</button>
                                <%if(dtos.getUid().equals(id2)){%>
                                <button type="button" class="btn btn-primary" onclick="location.href= 'bupdate.jsp?bid=<%=cbid %>'" style="border-radius: 12px;">수정</button>
                                <button type="button" class="btn btn-primary" onclick="location.href= 'bdelete.jsp?bid=<%=cbid %>'" style="border-radius: 12px;">삭제</button>
                                <%} %>
                                <button type="button" class="btn btn-primary" onclick="location.href='typeb.jsp'" style="border-radius: 12px;">뒤로가기</button>
                            </form>
                        </div>
            </div>
        </div>
        <div class="container">
            <form action="cmtpro.jsp" method="post">
                <p>
                    <div>
                        <div>
                            <h6 style="text-align: left; font-size: 12px;">Comments</h6>
                        </div>
                        <div>
                            <table class="table">
                                <%
	                    
	                    for(CommentDto cdto : cdtos) {
	                    %>
                                <tr>
                                    <th>
                                        <h6><%=cdto.getChacter() %>&nbsp;&nbsp;&nbsp;&nbsp;<%=cdto.getCname() %>&nbsp;&nbsp;&nbsp;&nbsp;<%=cdto.getCdate() %></h6>
                                        <h6 style="font-size: 15px"><%=cdto.getCmt()%></h6>
                                    </th>
                                    <%if(cdto.getUid().equals(id2)){%>
                                    <th><a style="font-family: 'Lato', sans-serif; color: #7777; font-size: 12px;" href="cdelete.jsp?cnum=<%=cdto.getCnum()%>">삭제</a></th>
                                    <%}%>
	                    	</tr>
	                        <%} %>
                                <tr>
                                    <td>
                                        <textarea style="width: 1150px; resize: none;" rows="3" cols="30" id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea>
                                        <br class="com">
                                        <div class="brt">
                                            <input type="hidden" name="no" value="<%=cbid %>">
                                            <button type="submit" class="btn btn-primary" style="border-radius: 12px; width:30px; height: 30px; padding-left:16px; line-height: 0px;">등록</button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
            </form>
        </div>
        <div class="container">
            <form id="commentListForm" name="commentListForm" method="post">
                <div id="commentList">
                </div>
            </form>
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