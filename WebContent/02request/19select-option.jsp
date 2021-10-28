<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="">
	<select name="color" id="">
		<option value="red">빨강</option>
		<option value="blue" selected>파랑</option>
		<option value="yellow">노랑</option>
	</select>

	<br>
	
	<input type="submit" value="전송">
</form>

<hr>

<%
	String color = request.getParameter("color");
%>
<%=color %>
</body>
</html>