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

<h1>map</h1>

<%
Map<String, String> map = new HashMap<>();
map.put("lang","java");
map.put("pre","html");
map.put("pattern","mvc");
map.put("kakao","talk");
map.put("goo","gle");

pageContext.setAttribute("bean1", map);
session.setAttribute("bean2", map);
%>

<hr>

<p>map : ${bea1 }</p>
<p>lang : ${bean1.lang }</p>
<p>pre : ${bean1.pre }</p>
<p>pattern : ${bean1.pattern }</p>

<p>kakao${bean2.kakao }</p>
<p>goo${bean2.goo }</p>



</body>
</html>
