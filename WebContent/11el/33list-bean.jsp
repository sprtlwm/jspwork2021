<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
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
List<Bean04> val = new ArrayList<>();
Bean04 b1 = new Bean04();
b1.setNickName("para");
b1.setAge(32);

Bean04 b2 = new Bean04();
b2.setNickName("ana");
b2.setAge(55);

val.add(b1);
val.add(b2);

pageContext.setAttribute("list",val);
%>

<p>${list[0].nickName } : ${list[0].age }</p>
<p>${list[1].nickName } : ${list[1].age }</p>
</body>
</html>


