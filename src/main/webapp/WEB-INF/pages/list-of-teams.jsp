<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>List of teams</title>
	<link href="<c:url value='/static/css/bootstrap.css' />"
		rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css"
		href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>

<body>
	<div class="login-card">
	<h1>List of teams</h1>
	<p>Here you can see the list of the teams, edit them, remove or
		update.</p>
	<table border="1px" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th width="10%">id</th>
				<th width="10%">name</th>
				<th width="10%">rating</th>
				<th width="10%">date</th>
				<th width="10%">actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="team" items="${teams}">
				<tr>
					<td>${team.id}</td>
					<td>${team.name}</td>
					<td>${team.rating}</td>
					<td>${team.date}</td>
					<td>
						<a href="<c:url value='/team/edit/${team.id}' />">Edit</a><br />
						<a href="<c:url value='/team/delete/${team.id}' />">Delete</a><br />
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<p>
		<a href="<c:url value='/index' />">Home page</a>
	</p>
	</div>
</body>
</html>