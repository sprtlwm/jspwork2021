<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
//1.request 파라미터 수집
String indexStr = request.getParameter("index");
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String priceStr = request.getParameter("price");
String publisher = request.getParameter("publisher");
String stockStr = request.getParameter("stock");
int index = Integer.parseInt(indexStr);
int price = Integer.parseInt(priceStr);
int stock = Integer.parseInt(stockStr);

//2. application book attribute 수정(db 수정)
List<Bean06> books = (List<Bean06>) application.getAttribute("books");
Bean06 book = books.get(index);
book.setTitle(title);
book.setWriter(writer);
book.setPrice(price);
book.setPublisher(publisher);
book.setStock(stock);

//3. redirect
response.sendRedirect("25list-book-tag.jsp");
%>


