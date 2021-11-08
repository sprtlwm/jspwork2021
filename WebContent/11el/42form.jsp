<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<form action="42view.jsp" method="post">
	<input type="text" name="name"> <br>
	<input type="checkbox" name="food" value="apple" id="">apple <br>
	<input type="checkbox" name="food" value="orange" id="">orange <br>
	<input type="checkbox" name="food" value="melon" id="">melon <br> 

	<input type="submit" value="전송">
</form>



</body>
</html>
