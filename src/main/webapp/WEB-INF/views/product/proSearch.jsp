<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link href="../resources/css/searchCss/search.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Search</title>
</head>
<body id="popup">
	<div class="ec-base-layer">
		<div class="header">
			<h1>상품검색</h1>
		</div>
		<div class="content">
			<form id="searchForm" name="" action="/mid/product/proSearch" method="post" enctype="multipart/form-data">
				<div class="ecdf">
					<fieldset class="ec-base-box">
						<legend>상품검색</legend>
						<input type="hidden" value="1" id="curPage" name="curPage">
						<select name="kind" class="form-control searchop" style="display: none;">
								<option id="kw" value="kw">product</option>
							</select>
							
							상품명 <input id="keyword" name="search" class="inputTypeText" value="" type="text" />
						<button type="submit" class="btnSubmit">검색하기</button>
					</fieldset>
				
					<div class="resultArea">
						<p class="total">
							총 <strong>
							<c:if test="${prosize eq null}">0</c:if>
							${prosize}</strong>개 의 상품이 검색되었습니다.
						</p>
					</div>
				</div>
		
			<div class="ec-base-table typeList">
				<table border="1" summary="">
					<caption>제품 검색결과입니다</caption>
					<colgroup>
						<col style="width: 100px" />
						<col style="width: auto" />
						<col style="width: 80px" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col">상품 이미지</th>
							<th scope="col">상품 정보</th>
							<th scope="col">선택</th>
						</tr>
					</thead>
					<tbody class="center">
					<c:forEach items="${productList}" var="product" varStatus="p">
						<tr class="">
							<td class="thumb">
								<img id="cInput" src="../resources/product/images/${product.pro_image}" alt="상품이미지" />
							</td>
							<td class="left">${product.pro_name} 
								<input type="text" id="pricePro" value="${product.pro_price}" style="display: none;">
								<strong id="inputPrice" class="gBlank5 txtEm">${product.pro_price}</strong>
							</td>
							<td><input type="button" value="선택" onclick="setParentText(),window.close()"></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
				<c:choose>
			<c:when test="${prosize eq null || prosize eq 0}">
			</c:when>
			<c:otherwise>
			<div class=" ga09-paging">
				<ul class="pagination paging">
				<li><span id="${pager.startNum-1}" style="cursor: pointer"
					class="list listimg"><img alt="뒤로"
						src="../resources/images/page_prev.gif"></span></li>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<li><span id="${i}" class="list listnum"
						style="cursor: pointer">${i}</span></li>
				</c:forEach>
				<c:if test="${pager.curBlock < pager.totalBlock}">
					<li><span id="${pager.lastNum+1}" style="cursor: pointer"
						class="list"><img alt="다음"
							src="../resources/images/page_next.gif"></span></li>
				</c:if>
				<li><span id="${pager.lastNum}" style="cursor: pointer"
					class="list"><img alt="다음"
						src="../resources/images/page_next.gif"></span></li>
			</ul>
			</div>
			</c:otherwise>
			</c:choose>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		var kind = '${pager.kind}';
		if (kind == '') {
			kind = "kt";
		}
		$("#" + kind).prop("selected", true);
		$(".list").click(function() {
			$("#curPage").val($(this).attr("id"));
			$("#searchForm").submit();
		});
		
		//자식창에서 부모창으로 데이터 넘기기
		
		
		function setParentText(){
             opener.document.getElementById("pInput").value = document.getElementById("cInput").src
             opener.document.getElementById("sPrdPrice").value = document.getElementById("pricePro").value
        }

	</script>
	<script>
	/* 마우스 오버  */
	$('.listnum').mouseenter(function() {
		$(this).addClass("mousehover")
	});
	/* 마우스 리브  */
	$('.listnum').mouseleave(function() {
		$(this).removeClass("mousehover")
	});
	</script>


</body>
</html>