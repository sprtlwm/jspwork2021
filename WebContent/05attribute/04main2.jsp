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

<%
String[] list = {"home","about","info","logout"};
request.setAttribute("menuItems", list);
%>

<jsp:include page="04sub.jsp"></jsp:include>

<h1>main2 contents</h1>

<a href="/myjsp/05attribute/04main1.jsp">1번 파일이동</a>
</body>
</html>






