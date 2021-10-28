<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<input type="checkbox" name="param1" id="" value="yes"> Yes
		<br>
		<input type="submit" value="Yes">
	</form>
	
	<%
	String param = request.getParameter("param1");
	
	out.print("<p>");
	if(param != null && param.equals("yes")){
		out.print("동의하셨습니다.");
	}else{
		out.print("동의 안함");
	}
	out.print("</p>");
	%>
	
	
</body>
</html>