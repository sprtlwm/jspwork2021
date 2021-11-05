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
Map<String,Bean04> map = new HashMap<>(); 
Bean04 obj = new Bean04();
obj.setNickName("kakao");
obj.setAge(23);
obj.setVip(true);

map.put("key1",obj);


pageContext.setAttribute("data", map);
pageContext.setAttribute("key1", "key1");
pageContext.setAttribute("nickName", "nickName");
pageContext.setAttribute("age", "age");
pageContext.setAttribute("vip", "vip");
pageContext.setAttribute("key2", "seoul");
%>



<p>${data.key1.nickName }</p>
<p>${data.key1.age }</p>
<p>${data.key1.vip }</p>

<hr>
<p>${data["key1"]["nickName"] }</p>
<p>${data["key1"]["age"] }</p>
<p>${data["key1"]["vip"] }</p>

<hr>
<p>${data[key1][nickName] }</p>
<p>${data[key1][age] }</p>
<p>${data[key1][vip] }</p>

<p>${[nickName] }</p>
<p>${[key2] }</p>

</body>
</body>
</html>





