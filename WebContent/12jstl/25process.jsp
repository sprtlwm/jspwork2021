<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
//파라미터로 받은 값을 bean06 객체로 만들어서 appl 영역에 저장
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String priceStr = request.getParameter("price");
String publisher = request.getParameter("publisher");
String stockStr = request.getParameter("stock");
int price = Integer.parseInt(priceStr);
int stock = Integer.parseInt(stockStr);

Bean06 book = new Bean06(title,writer,price, publisher, stock);

List<Bean06> list= (List<Bean06>)application.getAttribute("books");
if(list ==null){
	list = new ArrayList<>();
	application.setAttribute("books", list);
}
list.add(book);

//25list-book.jsp로 리디렉션
response.sendRedirect("25list-book-tag.jsp");
%>