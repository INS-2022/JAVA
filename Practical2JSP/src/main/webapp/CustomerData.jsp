<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enter Customer Data</title>
</head>
<body>
	<h1>Register</h1>
	<%
	if (request.getParameter("error") == "true") {
		out.print("<h2>Error Occurred</h2>");
		out.print(request.getParameter("errorMessage"));
	}
	%>
	<form action="CustomerDataSubmitted.jsp">
		<label for="CutomerName">Name: </label> <input type="text"
			name="CutomerName" /><br> <label for="CustomerEmailAddress">Email
			Address: </label> <input type="text" name="CustomerEmailAddress" /><br>
		<label for="CutomerPhoneNo">Phone No: </label> <input type="text"
			name="CutomerPhoneNo" /><br> <input type="submit"
			value="Submit">

	</form>
</body>
</html>