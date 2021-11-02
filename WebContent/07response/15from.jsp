<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
Map<String, String> map = new HashMap<>();
map.put("pamra1","자바");
map.put("param2","hello world");
map.put("param3","스프링");

String qs = "?";

for (Map.Entry<String, String> entry : map.entrySet()) {
	qs += entry.getKey();
	qs += "=";
	qs += URLEncoder.encode(entry.getValue(), "utf-8");
	qs += "&";
}

if (map.size() > 0) {
	qs = qs.substring(0, qs.length() - 1);
}



response.sendRedirect("15to.jsp"+qs);
%>