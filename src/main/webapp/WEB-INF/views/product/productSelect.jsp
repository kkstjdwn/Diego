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
			<h1>Product Info</h1>
		</div>


		<div class="form-group">
			<label for="pro_date">Product Insert Date:</label> <b>${product.pro_date}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_num">Product Number:</label> <b>${product.pro_num}
			</b>
		</div>


		<div class="form-group">
			<label for="cat_ref">Category Number:</label> <b>${product.cat_ref}
			</b>
		</div>


		<div class="form-group">
			<label for="pro_name">Product Name:</label> <b>${product.pro_name}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_price">Product Price:</label> <b>${product.pro_price}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_count">Product Count:</label> <b>${product.pro_count}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_sale">Product Sale:</label> <b>${product.pro_sale}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_contents">Product Cotents:</label> <b>${product.pro_contents}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_warning">Product Warning:</label> <b>${product.pro_warning}
			</b>
		</div>


		<div class="form-group">
			<label for="pro_size">Product Size:</label> <b>${product.pro_size}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_color">Product Color:</label> <b>${product.pro_color}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_vital">Product Option:</label> <b>${product.pro_vital}
			</b>
		</div>

		<div>
			<c:forEach items="${product.images}" var="image">
				<div>
					<label for="pro_main">Product Main Image:</label> <br> <a
						href="../resources/product/images/${image.pro_main}">${image.pro_main}</a>

				</div>
				<div>
					<label for="pro_sumnale">Product Sumnale Image:</label> <br> <a
						href="../resources/product/images/${image.sumnale}">${image.sumnale}</a>

				</div>
				<div>
					<label for="pro_front">Product Front Image:</label> <br> <a
						href="../resources/product/images/${image.front}">${image.front}</a>

				</div>
				<div>
					<label for="pro_back">Product Back Image:</label> <br> <a
						href="../resources/product/images/${image.back}">${image.back}</a>

				</div>
				<div>
					<label for="pro_model">Product Model Image:</label> <br> <a
						href="../resources/product/images/${image.pro_model}">${image.pro_model}</a>

				</div>

				<div>
					<label for="pro_full">Product Full Image:</label> <br> <a
						href="../resources/product/images/${image.pro_full}">${image.pro_full}</a>

				</div>

				<div>
					<label for="pro_gif">Product Gif Image:</label> <br> <a
						href="../resources/product/images/${image.gif}">${image.gif}</a>

				</div>

				<div>
					<label for="pro_info">Product Info Image:</label> <br> <a
						href="../resources/product/images/${image.pro_info}">${image.pro_info}</a>

				</div>

				<div>
					<label for="pro_sizecut">Product SizeCut Image:</label> <br> <a
						href="../resources/product/images/${image.pro_sizecut}">${image.pro_sizecut}</a>

				</div>


			</c:forEach>

		</div>



		<a href="../qna/qnaWrite?pro_num=${product.pro_num}"
			class="btn btn-primary">QNA WRITE</a> <a
			href="./productUpdate?pro_num=${product.pro_num}"
			class="btn btn-primary">Update</a> <a
			href="./productList?pro_num=${product.pro_num}"
			class="btn btn-default">List</a>
	</div>


</body>
</html>