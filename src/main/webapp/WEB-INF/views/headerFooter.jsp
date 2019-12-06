<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/header.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<header>
		<div id="topinner">
			<div id="logo" class="">Logo</div>
			<div id="logo2" style="display: none;">
				<a>Logo2</a>
			</div>
			<div id="menubar">
				<nav>
					<div class="container">
						<ul class="menulist">
							<li><a><span>신상품</span></a></li>
							<li><a><span>베스트</span></a></li>
							<li><a><span>레더</span></a>
								<ul>
									<li><a>지갑</a></li>
									<li><a>가방</a></li>
								</ul></li>
							<li><a><span>코스메틱</span></a>
								<ul>
									<li><a>페이스</a></li>
									<li><a>바디</a></li>
								</ul></li>
							<li><a><span>의류</span></a>
								<ul>
									<li><a>티셔츠</a></li>
									<li><a>셔츠</a></li>
									<li><a>팬츠</a></li>
									<li><a>수트</a></li>
								</ul></li>
							<li><a><span>언더웨어</span></a></li>
							<li><a><span>이벤트</span></a></li>
							<li><a><span>고객센터</span></a>
								<ul>
									<li><a>NOITCE</a></li>
									<li><a>FAQ</a></li>
									<li><a>Q&A</a></li>
									<li><a>Review</a></li>
									<li><a>Event</a></li>
								</ul></li>
							<li><a><span>About Brand</span></a></li>
						</ul>
					</div>
				</nav>
			</div>
			<div class="gnb_con">

				<h1 class="gnb_logo">
					<a href="/"><img src="" alt="마르시오디에고 로고" /></a>
				</h1>
				<ul class="menu_list gnb_menu">
					<li><a href=""><span>신상품</span></a></li>
					<li><a href=""><span>베스트</span></a></li>
					<li><a href=""><span>레더</span></a>
						<ul class="menu_depth">
							<li><a href="">지갑</a></li>
							<li><a href="">가방</a></li>

						</ul></li>
					<li><a href=""><span>코스메틱</span></a>
						<ul class="menu_depth">
							<li><a href="">페이스</a></li>
							<li><a href="">바디</a></li>
						</ul></li>
					<li><a href=""><span>의류</span></a>
						<ul class="menu_depth">
							<li><a href="">티셔츠</a></li>
							<li><a href="">셔츠</a></li>
							<li><a href="">팬츠</a></li>
							<li><a href="">수트</a></li>

						</ul></li>

					<li><a href=""><span>언더웨어</span></a></li>

					<li><a href=""><span>이벤트</span></a></li>
					<li><a href=""><span>고객센터</span></a>
						<ul class="menu_depth">
							<li><a href="">Notice</a></li>
							<li><a href="">FAQ</a></li>
							<li><a href="">Q&A</a></li>
							<li><a href="">Review</a></li>
							<li><a href=""><span>Event</span></a></li>
						</ul></li>
					<li><a href=""><span>About Brand</span></a>
						<ul class="menu_depth">
							<li><a href="">Marcio Diego</a></li>
						</ul></li>
				</ul>
				<div class="gnb_img">
					<a href="">
						<div class="gnbImg_con">
							<img src="" alt="" />
						</div>
						<h3>신상품</h3>
					</a>
				</div>
				<div class="gnb_img img02">
					<a href="">
						<div class="gnbImg_con">
							<img src="" alt="" />
						</div>
						<h3>베스트</h3>
					</a>
				</div>
				<div class="gnb_on_icon">

					<!-- 로그인/로그아웃 메뉴 -->
					<div id="log"
						class="xans-element- xans-layout xans-layout-statelogoff gnb_on ">
						<span style="cursor: pointer"> <a href="">로그인</a></span>
						<a href="" class="register_btn"> 회원가입
						</a>
					</div>

					<!-- 장바구니 -->
					<div id="topcarticon"
						class="xans-element- xans-layout xans-layout-orderbasketcount cart2 ">
						<img src="" /> 장바구니 (0)
					</div>


					<div class="myshop_ico">
						<a href=""><span>나의 쇼핑</span></a>
					</div>

				

					<!-- 햄버거 -->
					<div id="ham_btn">
						<img src="" alt="햄버거버튼" />  
					</div>


				</div>
			</div>
			<!-- gnb_con end-->

			<div class="right_menu">
				<div id="log">
					<span><a>로그인</a></span> <span><a>회원가입</a></span>
				</div>
				<div id="topcart">
					<img src="resources/images/cart.png">장바구니
				</div>
				<div class="myhsop">나의 쇼핑</div>
				<div id="ham">
					<img src="resources/images/hamb_icon.png">
				</div>
			</div>
		</div>
	</header>


	<footer class="footer">
		<div class="footer_con">
			<div class="foot_inner">
				<div class="copypadding">
					<div class="footer_logo">
						<a>MARCIO DIEGO</a>
					</div>
				</div>
				<div id="center" class="copypadding">
					<div id="customer">
						<ul>
							<li>고객센터 전번</li>
							<li>영업시간</li>
							<li>브레이크타임</li>
							<li>쉬는날</li>
						</ul>
					</div>
				</div>
				<div id="company" class="copypadding">
					<ul>
						<li class="copytext">"1"</li>
						<li class="copytext">"2"</li>
						<li class="copytext">"3"</li>
						<li class="copytext">"4"</li>
						<li class="copytext">"5"</li>
						<br>
						<li class="copytext">"2"</li>
						<li class="copytext">"123"</li>
						<li class="copytext">"123"</li>
						<li class="copytext">"34"</li>
						<li class="copytext">"556"</li>
					</ul>
				</div>
				<div id="link" class="copypadding">
					<ul>
						<li><a>Company</a></li>
						<li><a>Agreement</a></li>
						<li><a>Privacy policy</a></li>
						<li><a>Site guide</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
</body>

<script>
$(window).on("scroll", function() {
	if($(window).scrollTop()>10){
		$("#logo").addClass("t_logo")
	}else{
		$("#logo").removeClass("t_logo")
	}
})
</script>
</html>