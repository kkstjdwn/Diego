<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="outsearch" style="display: none;">
<form id="frm" action="./prosearchList">
				<input type="hidden" value="1" id="curPage" name="curPage">
				<div class="form-group col-xs-2">
					<select name="kind" class="form-control searchop">
						<option id="kw" value="kw">Writer</option>
					</select>
					<input type="text" class="form-control searchinp" placeholder="Search" name="search" value="${pager.search}">
						<button class="btn btn-primary" style="cursor:pointer" type="submit">
							<img alt="찾기버튼" src="../resources/images/button/btn_find.gif">
						</button>
				</div>
				</form>
			</div>
			

<table class="table"  >
			<thead >
				<tr class="info">
					
					<th><input type="checkbox" id="checkAll"></th>
					<th>Product Num</th>
					<th>Category</th>
					<th>Image</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Count</th>
					<th>Sales</th>
					<th>Contents</th>
					<th>Warning</th>
					<th>Color</th>
					<th>Size</th>
					<th>Option</th>
					<th>Date</th>
					<th>Update</th>
				</tr>

			</thead>

			<tbody>

				<c:forEach items="${productList}" var="product" varStatus="p">
					<tr class="warning">
						<td><input type="checkbox" class="productCheck product${p.index }" value="${product.pro_num }"></td>
						<td>${product.pro_num}</td>
						<td>${product.cat_ref}</td>
					
						<td><img src="../resources/product/images/${product.pro_main}"style="width: 70%; height:7%;"></td>
						
						<td><a href="./productSelect?pro_num=${product.pro_num}"> ${product.pro_name}</a></td>
						<td>${product.pro_price}</td>
						<td>${product.pro_count}</td>
						<td>${product.pro_sale}</td>
						<td>${product.contents}</td>
						<td>${product.pro_warning}</td>
						<td>${product.pro_color}</td>
						<td>${product.pro_size}</td>
						<td>${product.pro_vital}</td>
						<td>${product.pro_date}</td>
						<td><a href="./productUpdate?pro_num=${product.pro_num}"><input type="button" value="정보 수정" ></a></td>
					</tr>

				</c:forEach>

			</tbody>
		</table>	
		<div >
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
		
		<script type="text/javascript">
		var kind = '${pager.kind}';
		if (kind == '') {
			kind = "kt";
		}
		$("#" + kind).prop("selected", true);
		$(".list").click(function() {
			$("#curPage").val($(this).attr("id"));
			$("#frm").submit();
		});
	
	 	
	 	
	 	
	 	
	  </script>

</body>
</html>