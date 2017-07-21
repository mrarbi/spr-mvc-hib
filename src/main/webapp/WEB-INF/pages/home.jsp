<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Home page</title>
	<link href="<c:url value='/static/css/bootstrap.css' />"
		rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css"
		href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>

<body>
	<div class="login-card">
		<h1>Home page</h1>
		<p>
			${message} <br /> 
			<a href="<c:url value='/team/add' />">Add new team</a><br />
			<a href="<c:url value='team/list' />">Team list</a><br />
		</p>
	</div>
</body>
</html>