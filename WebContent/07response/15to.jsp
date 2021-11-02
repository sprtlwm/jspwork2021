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

<h1>15to.jsp</h1>

param1 : <%= request.getParameter("param1") %> <br> <%-- 자바 --%>
param2 : <%= request.getParameter("param2") %> <br> <%-- hello world --%>
param3 : <%= request.getParameter("param3") %> <br> <%-- 스프링 --%>

</body>
</html>