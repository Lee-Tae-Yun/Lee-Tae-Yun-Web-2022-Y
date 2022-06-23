<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="cs.mbti.BoradDto"%>
<%@page import="cs.mbti.LoginDao"%>
<%@page import="java.util.ArrayList"%>
<%
    	String id2 = (String)session.getAttribute("id");
	   	LoginDao dao = new LoginDao();
	    
	    //게시글 번호
	    int j = 0;
	    //게시글 갯수
	    int cnt = dao.getBoardCount();
	    //출력할 게시글 갯수
	  	int pageSize = 5; 
	 	//선택한페이지번호
	  	String pageNum = request.getParameter("pageNum");
	 	
	 	
	 	 if(pageNum == null){ 
	  		pageNum ="1";
	 	 }
		//현재 페이지를 받아온다.
	  int currentPage = Integer.parseInt(pageNum); 
		//출력할 게시글의 처음 index를 정의한다.
	  int startRow = (currentPage-1)*pageSize + 1;
		//출력할 게시글의 마지막 index를 정의한다.
	  int endRow= currentPage * pageSize;
		//게시글 출력
	  ArrayList<BoradDto> dtos = dao.getBoardList(startRow, pageSize);
	  pageContext.setAttribute("dtos",dtos);
	  if(cnt != 0){
		 // ArrayList<BoradDto> boardList = dao.getBoardList(startRow, pageSize);
	  } 
    %>

<!DOCTYPE html>
<html>

<head>
    <title>게시판</title>
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
        table tr th {
            text-align: center;
            vertical-align: middle;
        }

        div.brt {
            position: relative;
            bottom: 20px;
            left: 500px;
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
                    <li><a data-scroll href="#">게시판</a></li>
                    <li><a href="tran.jsp">검사해석</a></li>
                    <%}%>
            </ul>
        </div>
   	</div>
   		 <h1>MBTI별 게시판</h1>
   		<div class="brt">
    		<button type="button" class="btn btn-primary" onclick="location.href='Boin.jsp'" style="border-radius: 12px;">글쓰기</button>
    	</div>
    	
    <div class = "container">
    	<div class = "tborad">
		   <table class="table table-dark table-hover" >
		      <thead>
		      <tr>
		      	 <th>번호</th>
		      	 <th>MBTI</th>
		         <th>제목</th>
		         <th>작성자</th>
		         <th>작성날짜</th>
		         <th>조회수</th>
		      </tr>
		      </thead>

			  <%j = startRow;
			 
			  	for(int i=0; i < dtos.size(); i++){ 
			  		BoradDto dto = dtos.get(i);
			  %>
                    <tr>
                        <th><%=j++ %></th>
                        <th><%=dto.getBoradtype() %></th>
                        <th><a href="Bview.jsp?bid=<%=dto.getBid() %>&pageNum=<%=pageNum%>&boradtype=<%=dto.getBoradtype()%>"><%=dto.getBtitle() %></a>
                            <%if(dao.getCmtCount(Integer.parseInt(dto.getBid())) !=0){ %>
                            <a style="color: red;">[<%=dao.getCmtCount(Integer.parseInt(dto.getBid()))%>]</a>
                            <%} %>
                        </th>
                        <th><%=dto.getBname() %></th>
                        <th><%=dto.getBdate() %></th>
                        <th><%=dto.getBoradview() %></th>


                    </tr>

                    <%}%>
			     
   			</table>
   			<%
   			
		if(cnt != 0){
			//전체게시글의맞춰서 출력할 게시글의 갯수를 맞춰서 페이지를 몇페이지를 만들어야하는지,설정한 페이지보다 양이 작으면 0페이지인데 항상 1페이지 부터 시작할수있게.
			int pageCount = cnt/pageSize + (cnt%pageSize <= 0?0:1);
			//페이지 블록수를 몇개를줄것인지.
			int pageBlock = 3;
			//페이지블록을 넘겼을때 몇페이지로 시작해야하는지
			int startPage = ((currentPage-1)/pageBlock) * pageBlock + 1;
			//끝페이지는 몇페이지이어야하는지.
			int endPage = startPage + pageBlock - 1;
			//끝페이지가 페이지수보다 커버리면 페이지 블럭이 의미가 없기때문에 맞춰주기
			if(endPage > pageCount){
				endPage = pageCount;
			}
			%>
                    <div>
                        <%
            //이전
            //ex)4페이지일경우 1,2,3페이지가 보여야한다. 그페이지가 보일수있게 출력
			if(startPage > pageBlock){
				%>
                        <a href="typeb.jsp?pageNum=<%=startPage-pageBlock%>"> 이전 </a>
                        <%
			}
			
			//숫자
			//페이지숫자를 출력
			for(int k=startPage; k<=endPage; k++){
				%>
                        <a href="typeb.jsp?pageNum=<%=k%>"> <%=k%> </a>
                        <%
			}
			//다음
			//3페이지일경우 뒤에 4페이지가 존재하면 4페이지로 넘어가서 확인을 해야하기때문에 다음으로 넘어가 그페이지가 보일수있게 출력
			if(endPage < pageCount){
				%>
                        <a href="typeb.jsp?pageNum=<%=startPage+pageBlock%>"> 다음 </a>
                        <%
			}
			%>
                    </div>
                    <%
		}

			%>
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