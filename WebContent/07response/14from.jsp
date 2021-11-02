<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String value = URLEncoder.encode("스프링","utf-8");
response.sendRedirect("14to.jsp?param="+value);
%>