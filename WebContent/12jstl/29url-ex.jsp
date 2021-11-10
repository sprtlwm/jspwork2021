<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>

<c:url value="25process.jsp" var="addUrl">
<c:param name="title" value="java"/>
<c:param name="writer" value="kim"/>
<c:param name="price" value="75000"/>
<c:param name="stock" value="100"/>
<c:param name="publisher" value="cpub"/>
</c:url>

<a href="${addUrl }"> 책추가</a>





</body>
</html>



