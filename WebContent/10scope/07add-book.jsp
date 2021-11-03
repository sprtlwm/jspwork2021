<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.Mybook" %>
<% request.setCharacterEncoding("utf-8"); %>



<%
List<Mybook> books = (List<Mybook>) application.getAttribute("books");
if(books == null){
	books = new ArrayList<>();
	application.setAttribute("books",books);
}

String title = request.getParameter("title");

String priceString = request.getParameter("price");
priceString = priceString == null ? "0":priceString;
int price = Integer.parseInt(priceString);

Mybook book = new Mybook(title,price);

books.add(book);

response.sendRedirect("07book-list.jsp");
%>