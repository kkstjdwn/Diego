<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/bootStrap.jsp" />

</head>
<body>
	<c:import url="../layout/nav.jsp" />
<div class="container">
	<div class="jumbotron page-header">
		
		<h1>Review List</h1>
	</div>
	

				
			<c:forEach items="${productList}" var="product" varStatus="p" >

				${product.pro_num}
						
					<c:forEach items="${revAll}" var="ra" varStatus="v">
					
						
	
							<b>${ra.pro_num}</b>
							
										
					
					</c:forEach>
				
			</c:forEach>
				
			
	
		
		
		<div >
			<form action="./qnaList" id="frm">
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
		
	</div>
	<script type="text/javascript">
		
	var kind = '${pager.kind}'
		if(kind == ''){
			kind = "kt";
		}
		$("#"+kind).prop("selected", true);
	
	
	
	</script>
	
</body>
</html>