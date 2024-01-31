<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form:form action="add" modelAttribute="toDoItem">
	<form:input path="content" />
	<form:input path="important" />
	<form:button>Submit</form:button>
</form:form>

<table>
	<tr>
		<th>ID</th>
		<th>Content</th>
		<th>Important</th>
	</tr>
	<c:forEach var="item" items="${list}">
	<tr>
		<td>${item.id}</td>
		<td>${item.content}</td>
		<td>${item.important}</td>
	</tr>
	</c:forEach>
</table>

<div>
	<a href="?sortAsc=true">Sort ASC</a>
	<a href="?sortAsc=false">Sort DESC</a>
</div>

</body>
</html>