<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/header.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<header>
		<div id="top">
			<div id="topinner">
				<div id="logo" class="">Logo</div>
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
				<!-- 마우스 오버시 메뉴 -->
				<div class="gnb_con"
					style="display: none; height: 320px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px;">

					<h1 class="gnb_logo">
						<a href="/"><img
							src="../resources/images/marciodiego_logo_fix.png" alt="마르시오디에고 로고" /></a>
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
						<li><a href="../faq/faqList"><span>고객센터</span></a>
							<ul class="menu_depth">
								<li><a href="../notice/noticeList">Notice</a></li>
								<li><a href="../faq/faqList">FAQ</a></li>
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
								<img src="" />
							</div>
							<h3>베스트</h3>
						</a>
					</div>
					<div class="gnb_on_icon">

						<!-- 로그인/로그아웃 메뉴 -->
						<div id="log" class="gnb_on ">
							<span style="cursor: pointer"> <a href="">로그인</a></span> <a
								href="" class="register_btn"> 회원가입 </a>
						</div>

						<!-- 장바구니 -->
						<div id="topcarticon" class="cart2 ">
							<img src="../resources/images/cart_wh.png" /> 장바구니 (0)
						</div>


						<div class="myshop_ico">
							<a href=""><span>나의 쇼핑</span></a>
						</div>



						<!-- 햄버거 -->
						<div id="ham_btn">
							<img src="../resources/images/hamb_icon_wh.png" alt="햄버거버튼" />  
						</div>


					</div>
				</div>
				<!-- 마우스 오버시 메뉴 끝 -->
			<!--  오른쪽 메뉴 -->
				<div class="right_menu">
					<div id="log">
						<span><a>로그인</a></span> <span><a>회원가입</a></span>
					</div>
					<div id="topcart">
						<img src="../resources/images/cart.png">장바구니
					</div>
					<div class="myhsop">나의 쇼핑</div>
					<div id="ham">
						<img src="../resources/images/hamb_icon.png">
					</div>
				</div>
			<!-- 오른쪽 메뉴 끝 -->
	<!-- 햄버거버튼 클릭시 메뉴 -->	
				<div class="navi_con" style="visibility: hidden; opacity: 0; top: -100%;">
					<h1 class="navi_logo">
						<img src="../resources/images/h_logo.png" alt="마르시오디에고 로고" />
					</h1>
					<div class="close_btn">
						<img src="../resources/images/close_btn.png" alt="닫기버튼" />
					</div>
					<div class="marginNav">
						<div class="navi_box">
							<h1>
								<a href="">NEW</a>
							</h1>
						</div>
						<div class="navi_box">
							<h1>
								<a href="">BEST</a>
							</h1>
						</div>
						<div class="navi_box">
							<h1>레더</h1>
							<ul class="contents c3">
								<li><a href="">지갑</a></li>
								<li><a href="">가방</a></li>

							</ul>
						</div>
						<div class="navi_box">
							<h1>코스메틱</h1>
							<ul class="contents c4">
								<li><a href="">페이스</a></li>
								<li><a href="">바디</a></li>
							</ul>
						</div>
						<div class="navi_box">
							<h1>의류</h1>
							<ul class="contents c1">
								<li><a href="">티셔츠</a></li>
								<li><a href="">셔츠</a></li>
								<li><a href="">팬츠</a></li>
								<li><a href="">수트</a></li>


							</ul>
						</div>
						<div class="navi_box">
							<h1>
								<a href="">언더웨어</a>
							</h1>
			
						</div>
						<div class="navi_box">
							<h1>Community</h1>
							<ul class="contents c5">
								<li><a href="../notice/noticeList">공지사항</a></li>
								<li><a href="../faq/faqList">FAQ</a></li>
								<li><a href="">Q&A</a></li>
								<li><a href="">Photo
										review</a></li>
								<li><a href="">Review</a></li>
								<li><a href=""><span>Event</span></a></li>
							</ul>
						</div>
						<div class="navi_box">
							<h1>나의 쇼핑</h1>
							<ul class="contents c6">
								<li
									class="xans-element- xans-layout xans-layout-statelogoff sub "><a
									href="">주문현황</a>
								</li>

								<li
									class="xans-element- xans-layout xans-layout-statelogoff sub "><a
									href="">적립금</a>
								</li>

								<li
									class="xans-element- xans-layout xans-layout-statelogoff sub "><a
									href="">위시리스트</a>
								</li>

								<li
									class="xans-element- xans-layout xans-layout-statelogoff sub "><a
									href="">내
										게시물</a></li>
							</ul>
						</div>
						<div class="navi_box">
							<h1>About</h1>
							<ul class="contents c2">
								<li><a href="">Marcio Diego</a></li>
								<li><a href="">Collection</a></li>
							</ul>
						</div>
					</div>
					<div class="navi_footer">
						<div class="nationSelect">
							<select name="" id=""><option value="">Languages:
									대한민국</option></select>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
</body>

<script>
	/* 로고 가로세로 */
	$(window).on("scroll", function() {
		if ($(window).scrollTop() > 100) {
			$("#logo").addClass("t_logo")
		} else {
			$("#logo").removeClass("t_logo")
		}
	});
	/* 마우스 오버  */
	$('header').mouseenter(function() {
		$('.gnb_con').css("display", "");
	});
	/* 마우스 리브  */
	$('#topinner').mouseleave(function() {
		$('.gnb_con').css("display", "none");
	});
	
	/* 햄버거버튼 클릭 이벤트 */
	$('#ham_btn').on("click", function() {
		$('.navi_con').css("visibility", "visible");
		$('.navi_con').css("top", "0");
		$('.navi_con').css("opacity","1");
	});
	
	/* 햄버거 메뉴 닫기 */
	$('.close_btn').on("click", function() {
		$('.navi_con').css("visibility", "hidden");
		$('.navi_con').css("top", "-100%");
		$('.navi_con').css("opacity","0");
	});
	
</script>
</html>