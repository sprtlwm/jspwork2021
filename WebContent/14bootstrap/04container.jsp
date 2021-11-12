<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<style>
.container {
		background-color: skyblue;
}
div {
	background-color: silver;
}
.container-fluid{
	background-color: springGreen;
}

</style>
<title>Insert title here</title>
</head>
<body>

<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro consectetur sunt nisi perspiciatis libero illum nam ipsam architecto inventore dolore facilis fugit quisquam dolorum voluptate consequuntur? Asperiores voluptatum aut sunt!</div>

<div class="container">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat ab consequatur molestiae reprehenderit accusantium laboriosam natus sit aliquid rerum dolorem sunt magni accusamus eveniet sapiente ut assumenda sed nostrum fugit.</div>

<div class="container-fluid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt obcaecati ullam repellendus debitis ratione provident nulla non odio ducimus natus aliquam vero quia ad magni explicabo! Quod quisquam expedita error?</div>




<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>

