<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 로그인 </h1>
<!-- <form action="/myjsp/02request/36login-process.jsp" method="post"> -->
<form action="<%= request.getContextPath() %>/02request/36login-process.jsp" method="post">
	id: <input type="text" name="id" id="" placeholder = "아이디"> <br> 
	pw:	<input type="password"name="password" id="" placeholder = "패스워드"> <br> 
	<input type="submit" value="로그인">
	
	</form>
	
</body>
</html>