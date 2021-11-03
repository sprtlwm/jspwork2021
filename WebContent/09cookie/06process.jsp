<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String userid = request.getParameter("userid");
if(userid !=null){
	session.setAttribute("user", userid);
}

response.sendRedirect("06main.jsp");
%>