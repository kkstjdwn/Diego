<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootStrap.jsp" />
<title>Insert title here</title>




</head>
<body>


	
	<div class="container">
<div class="jumbotron page-header">
	<h1>Product Info</h1>
</div>
			<input type="hidden" name="pro_num" value="${product.pro_num}">
			
			<div class="form-group">
			<label for="pro_date">Product Insert Date:</label>
					<b>${product.pro_date} </b>
			</div>
			
			<div class="form-group">
			<label for="cat_ref">Category Number:</label>
					<b>${product.cat_ref} </b>
			</div>
		
		
			<div class="form-group">
			<label for="pro_num">Product Number:</label>
					<b>${product.pro_num} </b>
			</div>
		
			<div class="form-group" >
				<label for="pro_name">Product Name:</label> 
					<b>${product.pro_name} </b>
			</div>
			
			<div class="form-group">
				<label for="pro_price">Product Price:</label>
					<b>${product.pro_price} </b>
			</div>
			
			<div class="form-group">
				<label for="pro_count">Product Count:</label>
					<b>${product.pro_count} </b>
			</div>
	
			<div class="form-group">
				<label for="pro_contents">Product Cotents:</label>
					<b>${product.pro_contents} </b>
			</div>
	
			<div class="form-group">
			<label for="pro_warning">Product Warning:</label>
					<b>${product.pro_warning} </b>
			</div>
			
			
			<div class="form-group">
			<label for="pro_size">Product Size:</label>
					<b>${product.pro_size} </b>
			</div>
			
			<div class="form-group">
				<label for="pro_color">Product Color:</label>
				 	<b>${product.pro_color} </b>
			</div>
			
			<div class="form-group">
				<label for="pro_vital">Product Option:</label>
				 	<b>${product.pro_vital} </b>
			</div>
			
			<a href="./productUpdate?pro_num=${product.pro_num}" class="btn btn-primary">Update</a>
			<a href="./productList?pro_num=${product.pro_num}" class="btn btn-default">List</a>
	</div>
	
	
</body>
</html>