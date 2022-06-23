<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%
    	String id2 = (String)session.getAttribute("id");
    %>

<!DOCTYPE html>
<html>

<head>
    <title>검사해석</title>
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
                    <li><a data-scroll href="#">검사해석</a></li>
                    <%}%>
            </ul>
        </div>
    </div>
    
<section class="portfolio" id="portfolio">
    <div class="container" id="portfolio-grid">
        <nav class="centered-pills clearfix">
            <ul class="nav nav-pills" >
                <li><a href="javascript:void(0);" class="filter active" data-filter="all">All</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".E">E</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".I">I</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".N">N</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".S">S</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".T">T</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".F">F</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".J">J</a></li>
                <li><a href="javascript:void(0);" class="filter" data-filter=".P">P</a></li>
            </ul>
        </nav>
	
        <div class="row">

           	  	<div class="row">
		           <div class="mix all I N T J col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#INTJ'">INTJ</h6>
		           </div>
		           <div class="mix all I N T P col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#INTP'">INTP</h6>
		           </div>
		           <div class="mix all E N T J col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ENTJ'">ENTJ</h6>
		           </div>
		           <div class="mix all E N T P col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ENTP'">ENTP</h6>
		           </div>
		           <div class="mix all I N F J col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#INFJ'">INFJ</h6>
		           </div>
		           <div class="mix all I N F P col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#INFP'">INFP</h6>
		           </div>
		           <div class="mix all E N F J col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ENFJ'">ENFJ</h6>
		           </div>
		           <div class="mix all E N F P col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ENFP'">ENFP</h6>
		           </div>
		           <div class="mix all I S T J col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ISTJ'">ISTJ</h6>
		           </div>
		           <div class="mix all I S F J col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ISFJ'">ISFJ</h6>
		           </div>
		           <div class="mix all E S T J col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ESTJ'">ESTJ</h6>
		           </div>
		           <div class="mix all E S F J col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ESFJ'">ESFJ</h6>
		           </div>
		           <div class="mix all I S T P col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ISTP'">ISTP</h6>
		           </div>
		           <div class="mix all I S F P col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ISFP'">ISFP</h6>
		           </div>
		           <div class="mix all E S T P col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ESTP'">ESTP</h6>
		           </div>
		           <div class="mix all E S F P col-md-4 col-sm-6" >
		                <h6 class="responsive" onclick="location.href='#ESFP'">ESFP</h6>
		           </div>
        		</div>
   			</div>

</section>
</header>
<footer >
<div style="font-family: 'Lato', sans-serif;">
	<div style="margin-bottom: 150px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/isfp.png" alt="ISFP">
	</div>
	<div>
	<a style="font-size: 25px" name = "ISFP">호기심 많은 예술가</a>
	<h4>ISFP</h4>
	말없이 다정하고 온화하며 사람들에게 친절하고 상대방을 잘 알게 될 때까지 내면의 모습이 잘 보이지 않는다. 
	의견 충돌을 피하고, 인화를 중시한다. 
	인간과 관계되는 일을 할 때 자신의 감정과 타인의 감정에 지나치게 민감한 경향이 있다. 이들은 결정력과 추진력을 기를 필요가 있을 것이다. 
	눈치가 빠르며, 조용히 자기 일만 하고 있는 것처럼 보이지만 사실 주변 상황파악도 다 하고 있다.
	사람 간의 화합을 중시하며 충돌을 회피하는 성향으로 인해 타인과의 갈등이 심화되었을 경우 문제를 해결하려고 하기보다 상대방과의 관계를 끊을 수 있다. 이는 인간관계에서 큰 스트레스를 받는 ISFP의 특성 중 하나이다.
	문학, 음악, 미술 분야에 관심이 많아 예술가 기질도 있으며, 사회봉사 직종에도 잘 어울리는 유형이다. 따라서 평범한 회사 사무직이나 사회봉사직에도 적지 않게 분포하는 종류의 성격 타입이다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 170px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/ISTP.png" alt="ISTP">
	</div>
	<div>
	<a style="font-size: 25px" name = "ISTP">만능 재주꾼</a>
	<h4>ISTP</h4>
	과묵하며 절제된 호기심으로 인생을 관찰하고, 상황을 파악하는 민감성과 도구를 다루는 뛰어난 능력이 있다. 말수가 적으며, 객관적이고 합리적으로 인생을 관찰하는 유형이다.
	필요 이상으로 자신을 발휘하지 않으며, 일과 관계되지 않는 이상 어떤 상황이나 인간관계에 직접 뛰어들지 않는다. 가능한 에너지 소비를 하지 않으려 하며, 사실적 자료를 정리, 조직하기를 좋아하는 경향이 있으며 인과관계나 객관적 원리에 관심이 많다.
	눈치가 빠르며, 조용히 자기 일만 하고 있는 것처럼 보이지만 사실 주변 상황파악도 다 하고 있다.자신의 경계선 안으로 들어온 사람에게는 장난이 많고 따뜻한 면이 있으나, 그렇지 않은 사람에게는 무관심으로 일관한다. 무표정으로 보이는 경우가 많고 냉소적이고 차가운 이미지로 비춰진다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 210px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/ESFP.png" alt="ESFP">
	</div>
	<div>
	<a style="font-size: 25px" name = "ESFP">자유로운 영혼의 연예인</a>
	<h4>ESFP</h4>
	사교적이고 활동적이며 수용력이 강하고 친절하며 낙천적이다. 어떤 상황이든 잘 적응하며 현실적이고 실제적이다. 주위의 사람이나 일어나는 일에 대하여 관심이 많으며 사람이나 사물을 다루는 사실적인 상식이 풍부하다. 
	때로는 수다스럽고, 진지함이 결여되거나 마무리를 등한시하는 경향이 있으나, 어떤 조직체나 공동체에서 밝고 재미있는 분위기 조성 역할을 잘한다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 190px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/ESTP.png" alt="ESTP">
	</div>
	<div>
	<a style="font-size: 25px" name = "ESTP">모험을 즐기는 사업가</a>
	<h4>ESTP</h4>
	사실적이고 관대하며 개방적이고 사람이나 사물에 대한 선입견이 별로 없다. 강한 현실 감각으로 타협책을 모색하고 문제를 해결하는 능력이 뛰어나다. 센스 있고 유머러스하다. 어디서든 적응을 잘 하고 친구와 어울리기를 좋아한다.
	긴 설명을 싫어하고 운동, 음식 등 주로 오감으로 보고 듣고 만질 수 있는 삶의 모든 것을 즐기는 유형이다. 순발력이 뛰어나며 많은 사실들을 쉽게 기억하고, 예술적인 멋과 판단력을 갖고 있으며, 연장이나 재료들을 다루는 데 능숙하다. 
	논리, 분석적으로 일을 처리하는 데 반해, 추상적인 아이디어나 개념에 대해서는 별로 흥미가 없다. 즉, 현실적이고 실용적인 면에서 분석적인 자세를 보인다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 190px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/ISTJ.png" alt="ISTJ">
	</div>
	<div>
	<a style="font-size: 25px" name = "ISTJ">청렴결백한 논리주의자</a>
	<h4>ISTJ</h4>
	실제 사실에 대하여 정확하고 체계적으로 기억하며 일 처리에 있어서도 신중하고 책임감이 있다. 집중력이 강한 현실 감각을 지녔으며 조직적이고 침착하다. 보수적인 경향이 있으며, 문제를 해결하는데 과거의 경험을 잘 적용하며, 반복되는 일상적인 일에 대한 인내력이 강하다.
	다소 내향적이지만 틀에 짜여진 사회에서 주어진 임무를 철저하게 완수하려 노력하며 규칙을 잘 준수하는 유형이라 회사나 공공기관 근무를 선호하고 일반적인 학교 선생님들이 매우 좋아하는 유형이다. 겉으로 튀는 것을 별로 안 좋아하고 용의단정하며 정돈된 스타일이다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 170px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/ISFJ.png" alt="ISFJ">
	</div>
	<div>
	<a style="font-size: 25px" name = "ISFJ">용감한 수호자</a>
	<h4>ISFJ</h4>
	조용하고 차분하며 따뜻하고 친근하다. 책임감과 인내력 또한 매우 강하다. 본인의 친한 친구나 가족에게 애정이 가득하다. 이들은 언제나 진솔하려 노력하고 가볍지 않기 때문에 관계를 맺기에 가장 어려우나 가장 믿음직스러운 유형이다.
	사회생활 시 외부 환경에 대해 내향형 중에서 가장 방어력이 강하다. 상대방의 감정을 파악하는 데는 능숙하지만 표현하는 데는 서툴기 때문에 관계에 있어서 걱정을 하는 경우가 많다. 실제적이고 꼼꼼하게 계획적이며 협조적으로 일을 처리한다. 
	완벽한 결과물을 도출하지 못할 경우 스트레스를 상당히 받으며, 이상과 달리 귀차니즘이 생겼을 시, 자신에게서도 극심한 괴리감을 느낀다. 경험을 통해서 자신이 틀렸다고 인정할 때까지 꾸준히 밀고 나가는 편이다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 170px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/ESTJ.png" alt="ESTJ">
	</div>
	<div>
	<a style="font-size: 25px" name = "ESTJ">엄격한 관리자</a>
	<h4>ESTJ</h4>
	현실적, 구체적, 사실적이며 어떠한 활동을 조직화하고 주도해 나가는 지도력이 있다. 실질적이고 현실 감각이 뛰어나며 일을 조직하고 계획하여 추진시키는 능력이 있다. 행정, 의료, 법조, 군경, 재정, 특히나 모든 것을 망라한 한 단어로 '조직관리' 분야에 뛰어난 재능을 지녔으며, 체계적으로 사업체나 조직체를 이끌어 나간다. 
	타고난 지도자로서 프로젝트의 목표를 설정하고, 지시하고, 결정하고, 독려하여 기한 내에 철저히 이행하는 능력이 있다. 불확실한 미래의 가능성보다 흔들리지 않는 현재의 사실을 추구하기 때문에 현실중심적, 실용적인 면이 강하다. 
	하지만 타인과 자신의 감정을 고려하는 능력이 부족하여 속단속결하는 경향과 업무 위주로 딱딱하게 사람을 대하는 경향이 있으므로 인간 중심의 가치에 대해 고민하고 타인의 감정을 충분히 고려해야 한다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 190px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/ESFJ.png" alt="ESFJ">
	</div>
	<div>
	<a style="font-size: 25px" name = "ESFJ">사교적인 외교관</a>
	<h4>ESFJ</h4>
	동정심이 많고 다른 사람에게 관심을 쏟으며 인화를 중시한다. 타고난 협력자로서 동료애가 많고 친절하며 능동적인 구성원이다. 이야기 하기를 즐기며 정리정돈을 잘하고, 참을성이 많고 다른 사람들을 잘 도와준다. 
	사람을 다루고 행동을 요구하는 분야, 예를 들면 교직, 성직, 판매 특히 동정심을 필요로 하는 간호나 의료 분야에 적합하다. 
	일이나 사람 관련 문제에 대하여 냉철한 입장을 취하기 어려워한다. 반대 의견에 부딪혔을 때나, 자신의 요구가 거절 당했을 때 마음의 상처를 받는다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 210px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/INFJ.png" alt="INFJ">
	</div>
	<div>
	<a style="font-size: 25px" name = "INFJ">선의의 옹호자</a>
	<h4>INFJ</h4>
	인내심이 많고 통찰력과 직관력이 매우 뛰어나며 화합을 추구한다. 창의력이 좋으며, 성숙한 경우엔 강한 직관력으로 타인에게 말없이 영향력을 끼친다. 독창성과 내적 독립심이 강하며, 확고한 신념과 열정으로 자신의 영감을 구현시켜 나가는 정신적 지도자들이 많다. 
	나무보다 숲을 본다. 
	한곳에 몰두하는 경향으로 목적 달성에 필요한 주변적인 조건들을 경시하기 쉽고, 자기 내부의 갈등이 많고 복잡하다. 이들은 풍부하고 감성적인 내적인 성격을 갖고 있다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 130px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/INFP.png" alt="INFP">
	</div>
	<div>
	<a style="font-size: 25px" name = "INFP">열정적인 중재자</a>
	<h4>INFP</h4>
	인간 본연에 대한 애정으로 사람들의 장점을 발견하고, 이들의 가능성을 성취할 수 있도록 도우며, 세상을 더 나은 곳으로 만든다. 하지만 대그룹에 있을 경우 그들의 에너지가 쉽게 고갈되는 경향이 있고, 그들이 엄선한 친밀도가 높은 소수의 사람들과 상호작용 하는 것을 선호한다. 혼자 있기를 좋아하는 개인적인 성향도 있지만, 수줍음과 혼동되어서는 안되며 혼자 시간을 보내는 것으로부터 에너지를 얻는다는 것을 의미한다.
	목가적이고 부드러운 성향을 가지고 있으며 사려깊고 상냥한 언어를 사용한다. 노동의 대가를 넘어서 자신이 하는 일에 흥미와 진정한 의미를 찾고자 하며 그들의 창의성과 상상력을 발휘할 수 있는 음악, 예술, 문학 관련된 분야에 재능을 보인다. 갈등을 싫어하며 타인에 대한 뛰어난 이해력과 세심함으로 중재자의 역할을 부드럽게 수행하지만 기본 성격이 유하고 순수하기 때문에 중재과정에서 상처입고 잠적하는 유형이기도 하다. 
	또한 이상주의적인 성향으로 인해 현실적인 판단을 요하는 문제를 다루는 것을 종종 어려워하며 타인의 감정에 민감하기 때문에 타인에게는 치유자가 되지만 정작 본인은 정서적으로 취약 할 수 있다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 190px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/ENFJ.png" alt="ENFJ">
	</div>
	<div>
	<a style="font-size: 25px" name = "ENFJ">정의로운 사회운동가</a>
	<h4>ENFJ</h4>
	온화하고 적극적이며 책임감이 강하고 사교성이 풍부하고 동정심이 많다. 상당히 이타적이고 민첩하고 인화를 중요시하며 참을성이 많다. 
	다른 사람들의 생각이나 의견에 진지한 관심을 가지고 공동선을 위하여 다른 사람의 의견에 대체로 동의한다. 미래의 가능성을 추구하며 편안하고 능란하게 계획을 제시하고 집단을 이끌어가는 능력이 있다.
	때로 다른 사람들의 좋은 점을 지나치게 이상화하는 경향이 있으며 다른 사람들에 대해서도 자기와 같을 것이라고 생각하는 경향이 있다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 170px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/ENFP.jpg" alt="ENFP">
	</div>
	<div>
	<a style="font-size: 25px" name = "ENFP">재기발랄한 활동가</a>
	<h4>ENFP</h4>
	정열적이고 활기가 넘치며 상상력이 풍부하다. 온정적이고 창의적이며 항상 새로운 가능성을 찾고 시도하는 유형이다. 문제 해결에 재빠르고 관심이 있는 일은 수행해내는 능력과 열성이 있다. 반복되는 일상적인 일을 참지 못하고 열성이 나지 않는다. 
	또한 한 가지 일을 끝내기도 전에 몇 가지 다른 일을 또 벌이는 경향을 가지고 있다. 통찰력과 창의력이 요구되지 않는 일에는 흥미를 느끼지 못하고 열성을 불러일으키지 못한다.
	건강한 유형은 다른 사람과 관계 형성을 잘하고 분위기메이커 역할을 하나, 불건강할 경우 지나치게 예민하고 감정적이다. 또한 다른 사람의 인정과 관심을 요구하며 자신을 타인과 끊임없이 비교하고 쉽게 우울해진다. 
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 210px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/INTJ.png" alt="INTJ">
	</div>
	<div>
	<a style="font-size: 25px" name = "INTJ">용의주도한 전략가</a>
	<h4>INTJ</h4>
	윗자리에 있는 사람은 고독한 법, 전략적 사고에 뛰어나며 매우 극소수인 건축가형 사람은 이를 누구보다 뼈저리게 이해한다. 체스를 두는 듯한 정확하고 계산된 움직임과 풍부한 지식을 소유하고 있는 이들은 그들과 견줄 만한 비슷한 부류의 사람을 찾는 데 종종 어려움을 겪는다. 
	상상력이 풍부하면서도 결단력이 있으며, 야망이 있지만 대외적으로 표현하지 않으며, 놀랄 만큼 호기심이 많지만 쓸데없는 데 에너지를 낭비하는 법이 없다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 130px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/INTP.png" alt="INTP">
	</div>
	<div>
	<a style="font-size: 25px" name = "INTP">논리적인 사색가</a>
	<h4>INTP</h4>
	조용하고 과묵하며 논리와 분석으로 문제를 해결하기 좋아한다. 먼저 대화를 시작하지 않는 편이나 관심이 있는 분야에 대해서는 말을 많이 한다. 이해가 빠르고 직관력으로 통찰하는 능력이 있으며 지적 호기심이 많아, 분석적이고 논리적이다. 
	MBTI 16가지 성격 유형 중 창의적 지능과 논리면에서 가장 뛰어나, 비과학적이거나 논리적이지 못한 일들에 대단히 거부반응을 보일 경향이 높다. 
	특히 종교. 아이디어와 원리, 인과관계에 관심이 많으며 실체보다는 실체가 품고 있는 가능성에 관심이 많다.
	또 주어진 계획을 그대로 수행하기보다는 즉흥적 활동을 통하여 자기 역량을 효과적으로 발휘하는 편이다. 계획을 철저하게 잘 짜거나, 짜는 과정에만 재미를 느끼는 건 '계획형'이라고 볼 수 없다. 다시 말해 계획을 철저하게 짜놨다 한들 곧 다시 즉흥적으로 행동할 가능성이 매우 높은 유형이다. 
	조언 문단에도 후술하겠지만, 이들에게는 상세한 계획을 늘어놓기보다는 약간의 수칙이나 방향 몇 개, 혹은 큰 틀 하나를 설정한 뒤 그것을 벗어나지 않는 수준에서 즉흥적으로 행동할 수 있도록 하는 것이 오히려 효과적이다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 190px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/ENTJ.png" alt="ENTJ">
	</div>
	<div>
	<a style="font-size: 25px" name = "ENTJ">대담한 통솔자</a>
	<h4>ENTJ</h4>
	열성이 많으며 자기 주장이 강하면서 단호하고 지도력과 통솔력이 있다. 활동적이고 장기적인 계획과 거시적 비전을 선호한다. 지식에 대한 욕구와 관심이 많으며 특히 직관력을 사용해서 지적인 자극을 주는 새로운 아이디어에 높은 관심을 가지고 있다. 
	자신의 분야의 일 처리에 있어 사전 준비를 철저히 하며  논리, 분석적으로 계획하고 조직하여 체계적으로 추진해 나가는 유형이다. 다만 다른 사람의 의견에 귀를 기울일 필요가 있으며, 자신과 타인의 감정에 충실할 필요가 있다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
	<div style="margin-bottom: 150px">
	<div style="float: left;">
	<img class="img-responsive" src="img/mbti/ENTP.png" alt="ENTP">
	</div>
	<div>
	<a style="font-size: 25px" name = "ENTP">뜨거운 논쟁을 즐기는 변론가</a>
	<h4>ENTP</h4>
	특유의 능글거리면서 경쾌한 성격과 문제의 본질을 파악하고 논리적으로 판단하려는 기질이 있고, 어느곳에서나 적응력이 빠른 성격이다. 본인이 구상하는 바를 실현시키고 싶어하는 기질이 강하며, 여기에 특유의 아웃사이더적인 성격까지 겹쳐 그야말로 혁명가의 기질을 띠고 있다. 
	모든 분야에 있어서, 기존의 체제 자체를 뒤집어 버리거나 분야 전체의 도약을 이루어내는 인물들이 많다.
	<p></p>
	<p><a href="#">위로</a></p>
	</div>
	</div>
</div>
</footer>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="js/jquery.mixitup.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/smooth-scroll.js"></script>
<script src="js/custom.js"></script>
</body>
</html>