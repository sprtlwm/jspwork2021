<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<div>
<%=request.getParameter("num1") %>
+
<%=request.getParameter("num2") %>
= <%=request.getParameter("num1") + request.getParameter("num2") %>
</div>
<hr>
<div>
<%
int n1 = Integer.parseInt(request.getParameter("num1"));  
int n2 = Integer.parseInt(request.getParameter("num2"));
%>
<%= n1 %> + <%= n2 %>=<%= n1 + n2 %>

</div>