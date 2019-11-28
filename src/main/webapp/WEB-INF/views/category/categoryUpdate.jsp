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
	
<div class="container">
  <h1>Category Update Page</h1>
  <form>
    <div class="form-group">
      <label for="CAT_NAME">카테고리명:</label>
	  <select>
	  		<option>LETHER</option>
	  		<option>COSMETIC</option>
	  		<option>CLOTH</option>
	  		<option>UNDERWEAR</option>
	  </select>      
      

    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>


</body>
</html>