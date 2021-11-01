<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.Mybook" %>


<%
Mybook book = (Mybook) request.getAttribute("book");
%>

<div>
제목 : <%= book.getTitle() %> <br>
가격 : <%= book.getPrice() %> <br>
</div>

