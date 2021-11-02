<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%-- 아이디가 iamuser 이면 main.jsp
      아닐 경우 login-form.jsp로 리디렉션 하도록
--%>

<% 
String userid = request.getParameter("userid");
if(userid != null && userid.equals("iamuser")){
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>

<h1>메인 컨텐츠</h1>

</body>
</html>

<%
}else{
response.sendRedirect("09login-form.jsp");
}
%>

