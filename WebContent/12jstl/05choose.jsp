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

<h1>choose, when, otherwise</h1>
<!-- if else 처럼 사용 -->
<c:choose>
	<c:when test="${empty param.name }">
		<p>손님 반갑습니다.</p>
	</c:when>
	<c:otherwise>
		<p>${param.name }님 반갑습니다.</p>
	</c:otherwise>
</c:choose>


</body>
</html>
