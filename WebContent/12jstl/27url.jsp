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
<h1>jstl url tag</h1>
<hr>
<a href="http://www.naver.com">네이버1</a>

<br>

<a href="http://www.naver.com">네이버2</a>

<hr>

<c:url value="http://www.naver.com" var="naverUrl"></c:url>

<a href="${naverUrl }">네이버3</a>

<br>

<a href="${naverUrl }">네이버4</a>

<hr>

<c:url value="25book-form.jsp" var="addBookUrl"/>

<a href="${addBookUrl }">책 추가하기</a>

<br>

${addBoolUrl }

<hr>

<c:url value="25book-form.jsp"/>

<hr>

<a href="<%=request.getContextPath()%>/12jstl/25book-form.jsp"> 책 추가하기</a>

<br>

<a href="<c:url value="/12jstl/25book-form.jsp"/>"> 책 추가하기</a>

<br>
<c:url value="/12jstl/25book-form.jsp" var="addBookUrl2"/>

<a href="${addBookUrl2 }"> 책 추가하기</a>

</body>
</html>

