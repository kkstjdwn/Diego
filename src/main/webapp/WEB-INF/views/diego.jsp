<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
	text-align: center;
	}
	a{	
		font-size: 30px;
		text-decoration: none;
	}
	a:hover{
		text-decoration: underline;
	}

</style>
</head>
<body>
	<h1>MEMBER</h1>
	<a href="${pageContext.request.contextPath}/member/memberLogin">로그인</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberUpdate">update</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberSelect">mypage</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberInsert">join</a>
	<br>
	<br>
	<h1>POINT</h1>
	<a href="${pageContext.request.contextPath}/member/memberManage/pointInsert" >PI</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/pointUse">PU</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/pointMyList">PML</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/pointList">PL</a>
	<br>
	<br>
	<h1>WISHLIST</h1>
	<a href="${pageContext.request.contextPath}/member/memberManage/wishListInsert">WLI</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/wishListSelectList">WLSL</a>	
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/wishListDelete">WLD</a>
	<br>
	<br>
	<h1>ORDER</h1>
	<a href="${pageContext.request.contextPath}/member/memberManage/orderInser">OI</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/orderSeleet">OS</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/orderMyList">OML</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/orderList">OL</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/orderDelete">OD</a>
	<br>
	<br>
	<h1>COUPON</h1>
	<a href="${pageContext.request.contextPath}/member/memberManage/couponInsert">CI</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/couponSelect">CS</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/couponMyList">CML</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/couponList">CL</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/memberManage/couponDelete">CD</a>
	<br>
	
	
</body>
</html>