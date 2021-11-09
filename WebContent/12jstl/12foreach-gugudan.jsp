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

<h1>foreach 구구단 n단</h1>

<%-- <c:if test="${empty param.dan }">
	<p>단을 입력해주세요</p>
</c:if> --%>

<c:choose>

	<c:when test="${empty param.dan }">
		<p>단을 입력하세요</p>
	</c:when>
	
	<c:otherwise>
	
		<c:forEach begin="1" end="9" var="i">
			<p>${param.dan } X ${i } = ${param.dan*i }</p>
		</c:forEach>	
	
	</c:otherwise>
	
</c:choose>

</body>
</html>
