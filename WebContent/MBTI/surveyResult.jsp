<%@page import="cs.mbti.LoginDao"%>
<%@page import="cs.mbti.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   


    <%
	request.setCharacterEncoding("utf-8");
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
	double ee = (double) E / (double) 36 * 100.0;	//여기에 비율로 바꾼값 넣기
	double ii = (double) I / (double) 36 * 100.0;
	double ss = (double) S / (double) 36 * 100.0;
	double nn = (double) N / (double) 36 * 100.0;
	double tt = (double) T / (double) 39 * 100.0;
	double ff = (double) F / (double) 39 * 100.0;
	double jj = (double) J / (double) 39 * 100.0;
	double pp = (double) P / (double) 39 * 100.0;
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
	<meta charset="UTF-8">
	<title>검사 결과</title>
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
	:root {--EI-width: 0%; --IE-width: 0%; --SN-width: 0%; --NS-width: 0%; --TF-width: 0%; --FT-width: 0%; --JP-width: 0%; --PJ-width: 0%;}
	h2 { text-align: center;}
	h3 { text-align: center;}
	h4 { text-align: center;}
	body { padding: 50px;}
	.graphEI {height: 40px; margin: 0 0 30px; background:#dedede; text-align: right; color: white; }
	.graphEI span {display: block; padding: 0 10px; width:var(--EI-width); height: 40px; line-height: 40px;
	text-align: left; background: #fdbcb4; box-sizing: border-box; color: white; }
	
	.graphIE {height: 40px; margin: 0 0 30px; background: #dedede; text-align: right; color: white; }
	.graphIE span {display: block; padding: 0 10px; width: var(--IE-width); height: 40px; line-height: 40px;
	text-align: left; background: #b0e0e6; box-sizing: border-box; color: white; }
	
	.graphSN {height: 40px; margin: 0 0 30px; background:#dedede; }
	.graphSN span {display: block; padding: 0 10px; width: var(--SN-width); height: 40px; line-height: 40px;
	text-align: left; background: #e6eccc ; box-sizing: border-box; color: white; }
	
	.graphNS {height: 40px; margin: 0 0 30px; background:#dedede; }
	.graphNS span {display: block; padding: 0 10px; width: var(--NS-width); height: 40px; line-height: 40px;
	text-align: left; background: #e7d8c1; box-sizing: border-box; color: white; }	
	
	.graphTF {height: 40px; margin: 0 0 30px; background:#dedede; }
	.graphTF span {display: block; padding: 0 10px; width: var(--TF-width); height: 40px; line-height: 40px;
	text-align: left; background: #f2e4b5; box-sizing: border-box; color: white; }
	
	.graphFT {height: 40px; margin: 0 0 30px; background: #dedede; }
	.graphFT span {display: block; padding: 0 10px; width: var(--FT-width); height: 40px; line-height: 40px;
	text-align: left; background: #5c96a4; box-sizing: border-box; color: white; }
	
	.graphJP {height: 40px; margin: 0 0 30px; background:#dedede; }
	.graphJP span {display: block; padding: 0 10px; width: var(--JP-width); height: 40px; line-height: 40px;
	text-align: left; background:cornflowerblue; box-sizing: border-box; color: white; }
	
	.graphPJ {height: 40px; margin: 0 0 30px; background:#dedede; }
	.graphPJ span {display: block; padding: 0 10px; width: var(--PJ-width); height: 40px; line-height: 40px;
	text-align: left; background: coral; box-sizing: border-box; color: white; }		
			
</style>
<script lang="javascript" type="text/javascript">
	const root = document.querySelector(':root')	//CCS변수 조작
	root.style.setProperty('--EI-width',e)
	root.style.setProperty('--IE-width',i)
	root.style.setProperty('--SN-width',s)
	root.style.setProperty('--NS-width',n)
	root.style.setProperty('--TF-width',t)
	root.style.setProperty('--FT-width',f)
	root.style.setProperty('--JP-width',j)
	root.style.setProperty('--PJ-width',p)
</script>
</head>
<body>
	<h2>MBTI 결과</h2>
	<%if(mbtiR.equals("ISFP")){%> 
	<h3>호기심 많은 예술가</h3>
	<h4>ISFP</h4>
	<%}else if(mbtiR.equals("ISTP")){%>
	<h3>만능 재주꾼</h3>
	<h4>ISTP</h4>
	<%}else if(mbtiR.equals("ESFP")){%>
	<h3>자유로운 영혼의 연예인</h3>
	<h4>ESFP</h4>
	<%}else if(mbtiR.equals("ESTP")){%>
	<h3>모험을 즐기는 사업가</h3>
	<h4>ESTP</h4>
	<%}else if(mbtiR.equals("ISTJ")){%>
	<h3>청렴결백한 논리주의자</h3>
	<h4>ISTJ</h4>
	<%}else if(mbtiR.equals("ISFJ")){%>
	<h3>용감한 수호자</h3>
	<h4>ISFJ</h4>
	<%}else if(mbtiR.equals("ESTJ")){%>
	<h3>엄격한 관리자</h3>
	<h4>ESTJ</h4>
	<%}else if(mbtiR.equals("ESFJ")){%>
	<h3>사교적인 외교관</h3>
	<h4>ESFJ</h4>
	<%}else if(mbtiR.equals("INFJ")){%>
	<h3>선의의 옹호자</h3>
	<h4>INFJ</h4>
	<%}else if(mbtiR.equals("INFP")){%>
	<h3>열정적인 중재자</h3>
	<h4>INFP</h4>
	<%}else if(mbtiR.equals("ENFJ")){%>
	<h3>정의로운 사회운동가</h3>
	<h4>ENFJ</h4>
	<%}else if(mbtiR.equals("ENFP")){%>
	<h3>재기발랄한 활동가</h3>
	<h4>ENFP</h4>
	<%}else if(mbtiR.equals("INTJ")){%>
	<h3>용의주도한 전략가</h3>
	<h4>INTJ</h4>
	<%}else if(mbtiR.equals("INTP")){%>
	<h3>논리적인 사색가</h3>
	<h4>INTP</h4>
	<%}else if(mbtiR.equals("ENTJ")){%>
	<h3>대담한 통솔자</h3>
	<h4>ENTJ</h4>
	<%}else if(mbtiR.equals("ENTP")){%>
	<h3>뜨거운 논쟁을 즐기는 변론가</h3>
	<h4>ENTP</h4>
	<%}else{%>
	<h3>????</h3>
	<h4>????</h4>
	<%}%>
	<%if(ee>ii){%>
	<h4>E 마음 I</h4>	
	<div class="graphEI">
		<span><%=e%></span>
	</div>
	<%}else{%>
	<h4>I 마음 E</h4>	
	<div class="graphIE">
		<span><%=i%></span>
	</div>
	<%}%>
	<%if(ss>nn){%>
	<h4>S 에너지 N</h4>	
	<div class="graphSN">
		<span><%=s%></span>
	</div>
	<%}else{%>
	<h4>N 에너지 S</h4>	
	<div class="graphNS">
		<span><%=n%></span>
	</div>
	<%}%>
	<%if(tt>ff){%>
	<h4>T 본성 F</h4>	
	<div class="graphTF">
		<span><%=t%></span>
	</div>
	<%}else{%>
	<h4>F 본성 T</h4>	
	<div class="graphFT">
		<span><%=f%></span>
	</div>
	<%}%>
	<%if(jj>pp){%>
	<h4>J 전술 P</h4>	
	<div class="graphJP">
		<span><%=j%></span>
	</div>
	<%}else{%>
	<h4>P 전술 J</h4>	
	<div class="graphPJ">
		<span><%=p%></span>
	</div>
	<%}%>	
	<%dao.updateMBTI(mbtiR,id2);%>
	<a href="index.jsp" class="btn btn-primary btn-lg" style="border-radius: 12px;">홈화면으로</a>

</body>
</html>