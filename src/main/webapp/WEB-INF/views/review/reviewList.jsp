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
					
				
					<tr class="warning">
					
						<td><img src="../resources/product/images/${review.pro_main}"style="width: 70%; height: 20%;"></td>
						<br>
						<td>${review.pro_name}</td>
						<td>${review.pro_price}</td>
						<td>${review.pro_num}</td>
						<td>${review.reviewVO.star}</td>
						<td>${review.reviewVO.rev_num}</td>
						<td>${review.reviewVO.rev_date}</td>
					<h1>---------------------------------------------------------------------------</h1>
					</tr>
						<c:forEach items="${revAll}" var="rev">
						
					 <c:if test="${review.pro_num eq rev.pro_num}"> 	
									<p>리뷰: ${rev.rev_contents}</p>	
										<p>pronum: ${rev.pro_num}</p>	
									<p>review_number: ${rev.rev_num}
					 </c:if>  
					
						</c:forEach>
						
						<br>
						
						<h1>---------------------------------------------------------------------------</h1>
							
							
				</c:forEach>

		


		<div>
			<form action="./reviewList" id="frm">
				<input type="hidden" id="curPage" value="1" name="curPage">
				<select id="kind" name="kind">
					<option id="kt" value="kt">작성자</option>
					<option id="kw" value="kw">제목</option>
					<option id="kc" value="kc">내용</option>
				</select> 
				<input type="text" id="search" name="search" value="${pager.search}">

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