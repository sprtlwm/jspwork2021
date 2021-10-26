<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form>
		<input name="num"><br> 
		<input type="submit">
	</form>
	<%
	List<String> list = new ArrayList<>();
	list.add("apple");
	list.add("phone");
	list.add("coffee");
	list.add("computer");
	%>

	<%
		String num = request.getParameter("num");
	%>
	<p>
		<%
			if (num == null) {
			out.print("해당 상품은 존재하지 않습니다.");
		} else {
			switch (num) {
			case "0":
			case "1":
			case "2":
			case "3":
				int ind = Integer.parseInt(num);
				out.print(ind + "번 상품 : " + list.get(ind) + "입니다.");
				break;
			default:
				out.print("해당 상품은 존재하지 않습니다.");
			}
		}
		%>
	</p>


</body>
</html>