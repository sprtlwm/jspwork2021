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

<h1>~~~~첫번째 페이지 내용~~~~</h1>

<a href="<%= request.getContextPath() %>/03module/02page2.jsp">2번째 페이지</a>


<%@ include file="/03module/02sub.jsp" %>

</body>
</html>