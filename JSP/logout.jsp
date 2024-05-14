<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>logout</title>
</head>
<body>
<h1>Hi <%=session.getAttribute("username") %> You have Successfully logout</h1>
<%=session.getId() %>

</body>
</html>