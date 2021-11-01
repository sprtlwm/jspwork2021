<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8");%>




<%
	String code = request.getParameter("code");
%>

<%
	if ("food".equals(code)) {
		String[] list = {"apple","banana","melon"}; 
				request.setAttribute("food",list);
%>
		<jsp:forward page="10pagea.jsp" />
<%
	} else if ("song".equals(code)) {
	List<String> list = new ArrayList<>();
		list.add("MMM");
		list.add("DDD");
		list.add("ABC");
		list.add("PPAP");
			request.setAttribute("song", list);
%>
		<jsp:forward page="10pageb.jsp" />
<%
	}
%>










