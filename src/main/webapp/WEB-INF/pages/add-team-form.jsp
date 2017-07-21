<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Add team page</title>
	<link href="<c:url value='/static/css/bootstrap.css' />"
		rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css"
		href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>
<body>
	<div class="login-card">
	<h1>Add team page</h1>
	<p>Here you can add a new team.</p>
	<c:url var="addUrl" value="/team/add" />
	<form:form method="POST" commandName="team"	action="${addUrl}">
		<table>
			<tbody>
				<tr>
					<td>Name:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Rating:</td>
					<td><form:input path="rating" /></td>
				</tr>
				<tr>
					<td>Date:</td>
					<td><form:input path="date" type="date"/></td>
				</tr>
				<tr>
					<td><input type="submit" value="Add" /></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</form:form>

	<p>
		<a href="<c:url value='/index' />">Home page</a><br />
		<a href="<c:url value='/team/list' />">Team list</a><br />
	</p>
	</div>
</body>
</html>