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

.row {
	background-color: silver;
}
.row :nth-child(even) {
	background-color: seaGreen;
}

.row :nth-child(odd) {
	background-color: springGreen;
	
</style>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<h1>Lorem ipsum dolor sit amet.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit obcaecati corporis fuga perferendis soluta ullam quia illo a odio vitae. Temporibus alias inventore asperiores facilis eligendi ipsam libero sunt repellat?</p>
</div>

<hr>

<div class="container">
	<div class="row">
		<div class="col">
			<h1>Lorem ipsum dolor sit amet.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem voluptatibus blanditiis adipisci dignissimos rem nemo cupiditate saepe sed inventore cumque soluta magnam vero quasi et corrupti minima similique obcaecati ut!</p>
		</div>
	</div>
</div>



<div class="container">
	<div class="row">
		<div class="col">Lorem.</div>
		<div class="col">Suscipit?</div>
		<div class="col">Non!</div>
		<div class="col">Minima?</div>
		<div class="col">Magnam.</div>
		<div class="col">Harum.</div>
		<div class="col">Nam?</div>
		<div class="col">Minus!</div>
		<div class="col">Facilis.</div>
		<div class="col">Nam?</div>
		<div class="col">Molestias.</div>
		<div class="col">Tempore!</div>
	</div>
</div>

<hr>

<div class="container">
	<div class="row">
		<div class="col">Lorem.</div>
		<div class="col">Eveniet.</div>
		<div class="col">Pariatur.</div>
		<div class="col">Quo.</div>
	</div>
</div>









<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>

