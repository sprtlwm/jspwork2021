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
ArrayList<String> list = new ArrayList<>(Arrays.asList("home","about","login"));
// List<String> list = Arrays.asList("home", "about", "login");


request.setAttribute("menuItems", list);
%> 

<jsp:include page="05sub.jsp"></jsp:include>

<h1>main1 contents</h1>

</body>
</html>