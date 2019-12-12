<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/mid/resources/css/footer.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
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
		<div class="scrollTop" style="position:fixed;">
			<a id="toparea" href="#top">
				<img src="/mid/resources/images/uparrow.png" alt="상향 화살표" class="fas">
			</a>
		</div> 

		<script>
		/* 스크롤시 위로가기 버튼 */
		$(window).on("scroll", function() {
			if ($(window).scrollTop() > 100) {
				$('.scrollTop').css("display", "block");
			} else {
				$('.scrollTop').css("display", "none");
			}
		});
		
		 $('#toparea').click(function() {
			 $('body, 	html').animate({scrollTop:0},500);
			 }); 
		</script>
</body>

</html>