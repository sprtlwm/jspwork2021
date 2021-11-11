<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ tag dynamic-attributes="things"%>

<ul>
	<c:forEach items="${things }" var="item">
	<li>${item.key} : ${item.value }</li>
	</c:forEach>
</ul>
