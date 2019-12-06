<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make DIV</title>
<link href="resources/css/main.css" rel="stylesheet">
</head>
<body>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<header>
	<h1 style="text-align: center;">헤~~~~~더</h1>
</header>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<section style="width: 100%; height: 1319px; background-color: blue; padding-bottom: 0; margin-top:74px;">
	<div style="width: 100%; height: 969px; background:url('resources/images/mainb_01.jpg');">
	</div>
</section>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<section>
	<div style=" height: 1598px; background-color: black;" class="se-name">
		<h1 class="se-h1">BEST SELLER</h1>
		<ul class="pro">
			<c:forEach begin="1" end="8" var="v">
				<li class="pro-li">
					<c:if test="${v % 4 eq 0  }">
						<div class="pro-li-div_nm">
							<p class="pro-li-div-a"></p>
							<p class="pro-li-div-p"></p>
							<ul class="pro-li-div-ul">
								<li style="width: inherit; height: 36px; padding-bottom: 23px; background-color: orange;"></li>
								<li style="height: 18px; display: inline-block; background-color: orange;">12</li>
								<li style="height: 18px; display: inline-block; background-color: orange;">22</li>
							</ul>
						</div>
					</c:if> 
					<c:if test="${v % 4 ne 0 }">
						<div class="pro-li-div">
							<p class="pro-li-div-a"></p>
							<p class="pro-li-div-p"></p>
							<ul class="pro-li-div-ul">
								<li style="width: inherit; height: 36px; padding-bottom: 23px; background-color: orange;"></li>
								<li style="height: 18px; display: inline-block; background-color: orange;">12</li>
								<li style="height: 18px; display: inline-block; background-color: orange;">22</li>
							</ul>
						</div>
					</c:if>
				</li>
			</c:forEach>
		</ul>
	</div>
</section>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<section>
	<div style="height: 1112.5px; background-color: red;" class="se-name">
		<h1 class="se-h1">GROOMING</h1>
			<ul>
				<li>
					<div class="grm-div" style="margin-right: 30px;">
						<p class="grm-div-a">
							<img alt="grm1" src="resources/images/skin01.jpg">
						</p>
						<h3 class="grm-div-h3">~</h3>
						<p class="grm-div-p">@</p>
						<span class="grm-div-span">SPECIAL PRICE</span>
					</div>
				</li>
				<li>
					<div class="grm-div">
						<p class="grm-div-a">
							<img alt="grm1" src="resources/images/skin02.jpg">
						</p>
						<h3 class="grm-div-h3">~</h3>
						<p class="grm-div-p">@</p>
						<span class="grm-div-span">SPECIAL PRICE</span>
					</div>
				</li>
			</ul>
	</div>
</section>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<section style="padding-bottom: 200px;">

<div class="sps-gift"></div>


</section>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<section style="height: auto; padding-bottom: 100px;">
	<div class="se-name" style="background-color: yellow;">
		<h1 class="se-h1">NEW PRODUCTS.</h1>
		<ul class="pro">
			<c:forEach begin="1" end="40" var="v">
				<li class="pro-li">
					<c:if test="${v % 4 eq 0  }">
						<div class="pro-li-div_nm">
							<p class="pro-li-div-a"></p>
							<p class="pro-li-div-p"></p>
							<ul class="pro-li-div-ul">
								<li style="width: inherit; height: 36px; padding-bottom: 23px; background-color: orange;"></li>
								<li style="height: 18px; display: inline-block; background-color: orange;">12</li>
								<li style="height: 18px; display: inline-block; background-color: orange;">22</li>
							</ul> 
						</div>
					</c:if> 
					<c:if test="${v % 4 ne 0 }">
						<div class="pro-li-div">
							<p class="pro-li-div-a"></p>
							<p class="pro-li-div-p"></p>
							<ul class="pro-li-div-ul">
								<li style="width: inherit; height: 36px; padding-bottom: 23px; background-color: orange;"></li>
								<li style="height: 18px; display: inline-block; background-color: orange;">12</li>
								<li style="height: 18px; display: inline-block; background-color: orange;">22</li>
							</ul>
						</div>
					</c:if>
				</li>
			</c:forEach>
		</ul>
	</div>
</section>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<section style="margin-bottom: 250px; padding-bottom: 0;">
	<div class="add-join">
		<a href="#" style="text-decoration: none;">
			<div class="add-join-div">
				<h1 style="font-size: 28px; padding-bottom: 15px;">마르시오디에고 신규 회원 혜택</h1>
				<p>오직 신규 회원에게만 드리는 혜택</p>
				<p>신규 회원 가입 시 즉시 사용할 수 있는</p>
				<p>2,000포인트를 지급합니다.</p>
			</div>
		</a>
	</div>

</section>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<section style="padding-top: 350px; padding-bottom: 190px;">
<div class="ctg">
	<div class="ctg-div">
		<div class="ctg-div-name">
		<h1>Clothing</h1>
		</div>
	</div>
	<div class="ctg-div">
		<div class="ctg-div-name">
		<h1>Accessory</h1>
		</div>
	</div>
	<div class="ctg-div-nm">
		<div class="ctg-div-name">
		<h1>Grooming</h1>
		</div>
	</div>
</div>
</section>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<section style="margin: 0; padding: 0; height: 1000px; background-color: navy;">
	<div class="rev">
	<ul>
	<c:forEach begin="1" end="12" var="r">
	<li class="rev-li">
	<p class="rev-li-img"></p>
	<div class="rev-li-mem">
		<div class="rev-li-mem-tt">리뷰제목</div>
		<div class="rev-li-mem-nk">***</div>
	</div>
	<div class="rev-li-info">
		<div class="rev-li-info-img">
			<p></p>
		</div>
		<div class="rev-li-info-div">
		<div class="rev-li-info-tt">상품명</div>
		<div class="rev-li-info-fb">
			<span>리뷰<strong class="st">갯수</strong></span>
			<span>평점<strong class="st">점수</strong></span>
		</div>
		</div>
	</div>
	</li>
	</c:forEach>
	</ul>
	</div>
	<div class="rev-page">
		<a href="#"> < </a>
		<c:forEach begin="1" end="8" var="p">
		<a href="#"> ${p } </a>
		</c:forEach>
		<a href="#"> > </a>
	</div>
</section>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<footer> 
<h1 style="font-size: 50px;">푸~~~~~~~~~~~~~~~~~~~터</h1>
</footer>
</body>
</html>