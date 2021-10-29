<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>



<div>

	city: <%= request.getAttribute("city") %> <br>
	song: <%= request.getAttribute("song") %> <br>
	person : <%= request.getParameter("person")%>
</div>