<%@page import="cs.mbti.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    %>
<!--  
결과 값 도출 방식
I = - E = +
S = -  N = +
T = - F = +
J = - P = +
I,E :1,5,9,13,17,21,25,29,33,37,43,47,
S,N :2,6,10,14,18,22,26,30,34,38,44,48,
T,F :3,7,11,15,19,23,27,31,35,39,41,45,49
J,P :4,8,12,16,20,24,28,32,36,40,42,46,50
-->

<%
    	String id2 = (String)session.getAttribute("id");
    
	int quiz[] = new int[50];
	int I=0,E = 0,S = 0,N = 0,T = 0,F = 0,J = 0,P = 0;
	
	
	
	for(int i = 0; i<quiz.length; i++){
			String str;
			str = "q"+(i+1);
			quiz[i] = Integer.parseInt(request.getParameter(str));
		}
	
	for(int j=0; j<40; j+=4){
		if(quiz[j]>=0){
			E += quiz[j];
		}
		else{
			I += quiz[j]*-1;
		}
	}
	
	for(int j=1; j<41; j+=4){
		if(quiz[j]>=0){
			N += quiz[j];
		}
		else{
			S += quiz[j]*-1;
		}
	}
	
	for(int j=2; j<42; j+=4){
		if(quiz[j]>=0){
			F += quiz[j];
		}
		else{
			T += quiz[j]*-1;
		}
	}
	
	for(int j=3; j<43; j+=4){
		if(quiz[j]>=0){
			P += quiz[j];
		}
		else{
			J += quiz[j]*-1;
		}
	}
	
	
	
	for(int j=42; j<50; j+=4){
		if(quiz[j]>=0){
			E += quiz[j];
		}
		else{
			I += quiz[j]*-1;
		}
	}
	
	for(int j=43; j<50; j+=4){
		if(quiz[j]>=0){
			N += quiz[j];
		}
		else{
			S += quiz[j]*-1;
		}
	}

	for(int j=40; j<50; j+=4){
		if(quiz[j]>=0){
			F += quiz[j];
		}
		else{
			T += quiz[j]*-1;
		}
	}
	
	for(int j=41; j<50; j+=4){
		if(quiz[j]>=0){
			P += quiz[j];
		}
		else{
			J += quiz[j]*-1;
		}
	}

	//out.print("I "+I+"<br>");
	//out.print("E "+E+"<br>");
	//out.print("S "+S+"<br>");
	//out.print("N "+N+"<br>");
	//out.print("T "+T+"<br>");
	//out.print("F "+F+"<br>");
	//out.print("J "+J+"<br>");
	//out.print("P "+P+"<br>");
	//out.print("비율<br>");
	int IE = E+I;
	int SN = S+N;
	int TF = T+F;
	int JP = J+P;
	double ee = (double) E / (double) IE * 100.0;	//여기에 비율로 바꾼값 넣기
	double ii = (double) I / (double) IE * 100.0;
	double ss = (double) S / (double) SN * 100.0;
	double nn = (double) N / (double) SN * 100.0;
	double tt = (double) T / (double) TF * 100.0;
	double ff = (double) F / (double) TF * 100.0;
	double jj = (double) J / (double) JP * 100.0;
	double pp = (double) P / (double) JP * 100.0;
	String e = (String.format("%.0f",ee)+'%');
	String i = (String.format("%.0f",ii)+'%');
	String s = (String.format("%.0f",ss)+'%');
	String n = (String.format("%.0f",nn)+'%');
	String t = (String.format("%.0f",tt)+'%');
	String f = (String.format("%.0f",ff)+'%');
	String j = (String.format("%.0f",jj)+'%');
	String p = (String.format("%.0f",pp)+'%');
	
	
	String[] mbti = {"","","",""};
	if(ee>ii)
		mbti[0] = "E";
	else
		mbti[0] = "I";
	if(ss>nn)
		mbti[1] = "S";
	else
		mbti[1] = "N";
	if(tt>ff)
		mbti[2] = "T";
	else
		mbti[2] = "F";
	if(jj>pp)
		mbti[3] = "J";
	else
		mbti[3] = "P";
	
	String mbtiR = mbti[0].concat(mbti[1]);//문자열 합치기
	mbtiR = mbtiR.concat(mbti[2]);
	mbtiR = mbtiR.concat(mbti[3]);
	
	LoginDao dao = new LoginDao();
   	
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

    <script>
        var e = '<%=e%>';
        var i = '<%=i%>';
        var s = '<%=s%>';
        var n = '<%=n%>';
        var t = '<%=t%>';
        var f = '<%=f%>';
        var j = '<%=j%>';
        var p = '<%=p%>';
    </script>
    <style>
        :root {
            --EI-width: 0%;
            --IE-width: 0%;
            --SN-width: 0%;
            --NS-width: 0%;
            --TF-width: 0%;
            --FT-width: 0%;
            --JP-width: 0%;
            --PJ-width: 0%;
        }

        h2 {
            text-align: center;
        }

        h3 {
            text-align: center;
        }

        h4 {
            text-align: center;
        }

        body {
            padding: 50px;
        }

        .graphEI {
            height: 40px;
            margin: 0 0 30px;
            background: #dedede;
            text-align: right;
            color: white;
        }

        .graphEI span {
            display: block;
            padding: 0 10px;
            width: var(--EI-width);
            height: 40px;
            line-height: 40px;
            text-align: left;
            background: #fdbcb4;
            box-sizing: border-box;
            color: white;
        }

        .graphIE {
            height: 40px;
            margin: 0 0 30px;
            background: #dedede;
            text-align: right;
            color: white;
        }

        .graphIE span {
            display: block;
            padding: 0 10px;
            width: var(--IE-width);
            height: 40px;
            line-height: 40px;
            text-align: left;
            background: #b0e0e6;
            box-sizing: border-box;
            color: white;
        }

        .graphSN {
            height: 40px;
            margin: 0 0 30px;
            background: #dedede;
        }

        .graphSN span {
            display: block;
            padding: 0 10px;
            width: var(--SN-width);
            height: 40px;
            line-height: 40px;
            text-align: left;
            background: #e6eccc;
            box-sizing: border-box;
            color: white;
        }

        .graphNS {
            height: 40px;
            margin: 0 0 30px;
            background: #dedede;
        }

        .graphNS span {
            display: block;
            padding: 0 10px;
            width: var(--NS-width);
            height: 40px;
            line-height: 40px;
            text-align: left;
            background: #e7d8c1;
            box-sizing: border-box;
            color: white;
        }

        .graphTF {
            height: 40px;
            margin: 0 0 30px;
            background: #dedede;
        }

        .graphTF span {
            display: block;
            padding: 0 10px;
            width: var(--TF-width);
            height: 40px;
            line-height: 40px;
            text-align: left;
            background: #f2e4b5;
            box-sizing: border-box;
            color: white;
        }

        .graphFT {
            height: 40px;
            margin: 0 0 30px;
            background: #dedede;
        }

        .graphFT span {
            display: block;
            padding: 0 10px;
            width: var(--FT-width);
            height: 40px;
            line-height: 40px;
            text-align: left;
            background: #5c96a4;
            box-sizing: border-box;
            color: white;
        }

        .graphJP {
            height: 40px;
            margin: 0 0 30px;
            background: #dedede;
        }

        .graphJP span {
            display: block;
            padding: 0 10px;
            width: var(--JP-width);
            height: 40px;
            line-height: 40px;
            text-align: left;
            background: cornflowerblue;
            box-sizing: border-box;
            color: white;
        }

        .graphPJ {
            height: 40px;
            margin: 0 0 30px;
            background: #dedede;
        }

        .graphPJ span {
            display: block;
            padding: 0 10px;
            width: var(--PJ-width);
            height: 40px;
            line-height: 40px;
            text-align: left;
            background: coral;
            box-sizing: border-box;
            color: white;
        }
    </style>
    <script lang="javascript" type="text/javascript">
        const root = document.querySelector(':root') //CCS변수 조작
        root.style.setProperty('--EI-width', e)
        root.style.setProperty('--IE-width', i)
        root.style.setProperty('--SN-width', s)
        root.style.setProperty('--NS-width', n)
        root.style.setProperty('--TF-width', t)
        root.style.setProperty('--FT-width', f)
        root.style.setProperty('--JP-width', j)
        root.style.setProperty('--PJ-width', p)
    </script>
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

<h2>MBTI 결과</h2>
<p>	

	<%if(mbtiR.equals("ISFP")){%>
                    <h3>호기심 많은 예술가</h3>
                    <br>
                    <h4>ISFP</h4>
                    <%}else if(mbtiR.equals("ISTP")){%>
                    <h3>만능 재주꾼</h3>
                    <br>
                    <h4>ISTP</h4>
                    <%}else if(mbtiR.equals("ESFP")){%>
                    <h3>자유로운 영혼의 연예인</h3>
                    <br>
                    <h4>ESFP</h4>
                    <%}else if(mbtiR.equals("ESTP")){%>
                    <h3>모험을 즐기는 사업가</h3>
                    <br>
                    <h4>ESTP</h4>
                    <%}else if(mbtiR.equals("ISTJ")){%>
                    <h3>청렴결백한 논리주의자</h3>
                    <br>
                    <h4>ISTJ</h4>
                    <%}else if(mbtiR.equals("ISFJ")){%>
                    <h3>용감한 수호자</h3>
                    <br>
                    <h4>ISFJ</h4>
                    <%}else if(mbtiR.equals("ESTJ")){%>
                    <h3>엄격한 관리자</h3>
                    <br>
                    <h4>ESTJ</h4>
                    <%}else if(mbtiR.equals("ESFJ")){%>
                    <h3>사교적인 외교관</h3>
                    <br>
                    <h4>ESFJ</h4>
                    <%}else if(mbtiR.equals("INFJ")){%>
                    <h3>선의의 옹호자</h3>
                    <br>
                    <h4>INFJ</h4>
                    <%}else if(mbtiR.equals("INFP")){%>
                    <h3>열정적인 중재자</h3>
                    <br>
                    <h4>INFP</h4>
                    <%}else if(mbtiR.equals("ENFJ")){%>
                    <h3>정의로운 사회운동가</h3>
                    <br>
                    <h4>ENFJ</h4>
                    <%}else if(mbtiR.equals("ENFP")){%>
                    <h3>재기발랄한 활동가</h3>
                    <br>
                    <h4>ENFP</h4>
                    <%}else if(mbtiR.equals("INTJ")){%>
                    <h3>용의주도한 전략가</h3>
                    <br>
                    <h4>INTJ</h4>
                    <%}else if(mbtiR.equals("INTP")){%>
                    <h3>논리적인 사색가</h3>
                    <br>
                    <h4>INTP</h4>
                    <%}else if(mbtiR.equals("ENTJ")){%>
                    <h3>대담한 통솔자</h3>
                    <br>
                    <h4>ENTJ</h4>
                    <%}else if(mbtiR.equals("ENTP")){%>
                    <h3>뜨거운 논쟁을 즐기는 변론가</h3>
                    <br>
                    <h4>ENTP</h4>
                    <%}else{%>
                    <h3>????</h3>
                    <h4>????</h4>
                    <%}%>
	<%if(ee>ii){%>
                    <h4>E 마음 I</h4>
                    <h6><%= e %> <%= i %></h6>
                    <div class="graphEI">
                        <span></span>
                    </div>
                    <%}else{%>
                    <h4> I 마음 E </h4>
                    <h6><%= i %> <%= e %></h6>
                    <div class="graphIE">
                        <span></span>
                    </div>
                    <%}%>
	<%if(ss>nn){%>
                    <h4>S 에너지 N</h4>
                    <h6><%= s %> <%= n %></h6>
                    <div class="graphSN">
                        <span></span>
                    </div>
                    <%}else{%>
                    <h4>N 에너지 S</h4>
                    <h6><%= n %> <%= s %></h6>
                    <div class="graphNS">
                        <span></span>
                    </div>
                    <%}%>
	<%if(tt>ff){%>
                    <h4>T 본성 F</h4>
                    <h6><%= t %> <%= f %></h6>
                    <div class="graphTF">
                        <span></span>
                    </div>
                    <%}else{%>
                    <h4>F 본성 T</h4>
                    <h6><%= f %> <%= t %></h6>
                    <div class="graphFT">
                        <span></span>
                    </div>
                    <%}%>
	<%if(jj>pp){%>
                    <h4>J 전술 P</h4>
                    <h6><%= j %> <%= p %></h6>
                    <div class="graphJP">
                        <span></span>
                    </div>
                    <%}else{%>
                    <h4>P 전술 J</h4>
                    <h6><%= p %> <%= j %></h6>
                    <div class="graphPJ">
                        <span></span>
                    </div>
                    <%}%>	
	<%dao.updateMBTI(mbtiR,id2);%>
                    <button type="button" class="btn btn-primary" style="border-radius: 12px;" onclick="location.href='index.jsp'">홈화면으로</button>


    </header>

    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="js/jquery.mixitup.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/smooth-scroll.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>