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
List<String> list = new ArrayList<>();
list.add("naver");
list.add("webtoon ");
list.add("google");

String[] arr = {"kakao", "talk"};

pageContext.setAttribute("arr1", arr);
pageContext.setAttribute("list1", list);
%>

<p>${arr1[0] }</p>
<p>${arr1[1] }</p>
<p>${list1[0] }</p>
<p>${list1["1"] }</p>
<p>${list1[2] }</p>

</body>
</html>


