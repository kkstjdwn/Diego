<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make DIV</title>
<link href="resources/css/mdCss.css" rel="stylesheet">
</head>
<body>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<header style="height: 74px; width: 100%; background-color: green;">
	<h1 style="text-align: center;">헤~~~~~더</h1>
</header>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<section style="width: 100%; height: 1319px; background-color: blue; padding-bottom: 0;">
	<div style="width: 100%; height: 969px; background-color: fuchsia;">
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
						<p class="grm-div-a"></p>
						<h3 class="grm-div-h3">~</h3>
						<p class="grm-div-p">@</p>
						<span class="grm-div-span">SPECIAL PRICE</span>
					</div>
				</li>
				<li>
					<div class="grm-div">
						<p class="grm-div-a"></p>
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
<div class="add-join"></div>

</section>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<section style="padding-top: 350px;"></section>
</body>
</html>