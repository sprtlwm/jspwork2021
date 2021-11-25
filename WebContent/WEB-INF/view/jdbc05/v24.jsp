<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col">
				<h1>공급자 등록</h1>
				
				<form action="" method="post">
			<div class="form-group">
					<label for="input1">Supplier Name</label> 
					<input type="text" class="form-control" id="input1" name="supplierName">
			</div>
			<div class="form-group">
				<label for="input2">Contact Name</label> 
				<input type="text" class="form-control" id="input2" name="contactName">
			</div>
			<div class="form-group">
				<label for="input3">Address</label> 
				<input type="text" class="form-control" id="input3" name="address">
			</div>
			<div class="form-group">
				<label for="input4">City</label> 
				<input type="text" class="form-control" id="input4" name="city">
			</div>
			<div class="form-group">
				<label for="input5">Postal Code</label> 
				<input type="text" class="form-control" id="input5" name="postalCode">
			</div>
			<div class="form-group">
				<label for="input6">Phone</label> 
				<input type="text" class="form-control" id="input6" name="phone">
			</div>
			<div class="form-group">
				<label for="select1"></label> 
				<select name="" id="select1" class="form-control">
					<c:forEach items="${countryList }" var="country">
						<option value="${country }">${country }</option>
					</c:forEach>
				</select>
			</div>
			</form>
		</div>
	</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>

