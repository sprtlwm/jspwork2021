<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%!
	private int add(int a, int b){
		return a+b;
}
	private int subtarct(int a, int b){
		return a-b;
	}
	private int multiply(int a, int b){
		return a*b;
	}
	private int divide(int a, int b){
		return a/b;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>선언부 declaration</h1>

<%= add(5,7) %> <br><%-- 12 --%>
<%= subtarct(10,2) %><br><%-- 8 --%>
<%= multiply(10 ,25) %><br><%-- 250 --%>
<%= divide(99,3) %><br> <%-- 33 --%>

</body>
</html>