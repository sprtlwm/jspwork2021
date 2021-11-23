<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col">
			<form action="">
			<div class="form-group">
				<label for="select1">국가 선택</label>
				<select name="country" id="select1" class="form-control">
					<option value="UK">UK</option>
					<option value="USA">USA</option>
					<option value="Japan">Japan</option>
				</select>
			</div>
			</form>
		</div>
	</div>
</div>
<!-- .container>.row>.col>h1{공급자들} -->
  <div class="container">
    <div class="row">
      <div class="col">
        <h1>공급자들</h1>
        <!-- table.table>thead>tr>th*8^^tbody -->
        <table class="table">
          <thead>
            <tr>
              <th>ID</th>
              <th>SNAME</th>
              <th>CNAME</th>
              <th>ADDRESS</th>
              <th>CITY</th>
              <th>POST</th>
              <th>COUNTRY</th>
              <th>PHONE</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${suppliers }" var="supplier">
              <tr>
                <td>${supplier.supplierID }</td>
                <td>${supplier.supplierName }</td>
                <td>${supplier.contactName }</td>
                <td>${supplier.address }</td>
                <td>${supplier.city }</td>
                <td>${supplier.postalCode }</td>
                <td>${supplier.country }</td>
                <td>${supplier.phone }</td>
              </tr>
            </c:forEach>

          </tbody>
        </table>
      </div>
    </div>
  </div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>

