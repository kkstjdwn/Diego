<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Review List</title>
<c:import url="../layout/bootStrap.jsp" />
</head>
<body>
	<c:import url="../layout/header.jsp" />
	<div class="container">
		<c:import url="../layout/leftList.jsp" />
		<div class="jumbotron page-header">

			<h1>Review List</h1>
		</div>


		<c:forEach items="${reviewList}" var="review" varStatus="status">

			<p><img src="../resources/product/images/${review.pro_main}"	style="width: 70%; height: 20%;"></p>
			
			<br>
			
			<p>${review.pro_name}</p>
			<p>${review.pro_price}</p>
			<p>${review.pro_num}</p>
			<c:forEach items="${review.reviewVO}" var="rev" varStatus="status" begin="0" end="2" step="1">
				<p style="color: red;">${rev.rev_contents}</p>
				<p>${rev.star}</p>
				<p>${rev.rev_num}</p>
				<p>${rev.rev_date}</p>

				<c:forEach items="${review.revFilesVO}" var="ref" varStatus="r">
<%-- 					<c:if test="${rev.rev_num eq ref.rev_num}"> --%>
								<p>${ref.rev_num}</p>
<%-- 						<p>${ref.fname}</p> --%>
<%-- 					</c:if> --%>

				</c:forEach>

			</c:forEach>

			<p>-----------------------------------------------------------------------------------------------</p>
			<hr>

		</c:forEach>






		<div>
			<form action="./reviewList" id="frm">
				<input type="hidden" id="curPage" value="1" name="curPage">
				<select id="kind" name="kind">
					<option id="kt" value="kt">작성자</option>
					<option id="kw" value="kw">제목</option>
					<option id="kc" value="kc">내용</option>
				</select> <input type="text" id="search" name="search"
					value="${pager.search}">

				<button>찾기</button>
			</form>
		</div>

		<div>
			<ul class="pagination">
				<c:if test="${pager.curBlock gt 1}">
					<li><span id="${pager.startNum-1}" class="list">이전</span></li>
				</c:if>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<li><span id="${i}" class="list">${i}</span></li>
				</c:forEach>
				<c:if test="${pager.curBlock lt pager.totalBlock}">
					<li><span id="${pager.lastNum+1}" class="list">다음</span></li>
				</c:if>
			</ul>
		</div>


	</div>



	<script type="text/javascript">
		//서치	
		var kind = '${pager.kind}'
		if (kind == '') {
			kind = "kt";
		}
		$("#" + kind).prop("selected", true);

		//페이징리스트
		$(".list").click(function() {
			$("#curPage").val($(this).attr("id"));
			$("#frm").submit();
		});
	</script>

	<c:import url="../layout/footer.jsp" />
</body>
</html>