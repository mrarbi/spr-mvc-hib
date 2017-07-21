<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Edit team page</title>
	<link href="<c:url value='/static/css/bootstrap.css' />"
		rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css"
		href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>

<body>
	<div class="login-card">
	<h1>Edit team page</h1>
	<p>Here you can edit the existing team.</p>
	<p>${message}</p>
	<c:url var="editUrl" value="/team/edit" />
	<form:form method="POST" commandName="team"
		action="${editUrl}">
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
					<td>date:</td>
					<td><form:input path="date" type="date" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Edit" /></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</form:form>

	<p>
		<a href="<c:url value='/index' />">Home page</a>
	</p>
	
	</div>
</body>
</html>