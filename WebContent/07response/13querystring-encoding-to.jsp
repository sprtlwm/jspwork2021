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

<h1>13to.jsp 컨텐츠</h1>

a :<%= request.getParameter("a") %> <br>
b :<%= request.getParameter("b") %> <br>
c :<%= request.getParameter("c") %> <br>
</body>
</html>