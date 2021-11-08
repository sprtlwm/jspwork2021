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
pageContext.setAttribute("data", "page data");
request.setAttribute("data", "req data");
session.setAttribute("data", "session data");
application.setAttribute("data", "app data");

pageContext.setAttribute("new data", "new page data");
request.setAttribute("new data", "new req data");
session.setAttribute("new data", "new session data");
application.setAttribute("new data", "new app data");
%>

<p>${data}</p>
<p>${requestScope.data }</p>
<p>${sessionScope.data }</p>
<p>${applicationScope.data }</p>
<hr>
<p>${pageScope["new data"] }</p>
<p>${requestScope["new data"] }</p>
<p>${sessionScope["new data"] }</p>
<p>${applicationScope["new data"] }</p>

</body>
</html>
