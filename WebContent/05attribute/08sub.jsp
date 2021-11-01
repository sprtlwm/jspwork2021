<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<%
Object attr = request.getAttribute("books");
List<Mybook> books = (List<Mybook>) attr;
%>

<ul>
	<%
		for(Mybook book : books){
	%>
	<li><%= book.getTitle() %><%= book.getPrice() %></li>
	<%
		}
	%>
</ul>













