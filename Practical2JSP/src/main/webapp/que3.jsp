<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Demonstrate declaration, scriptlet and expression</title>
</head>
<body>
	<h1>Demonstrate declaration, scriptlet and expression</h1>


	<%-- Declaration tag --%>
	<%!int num1 = 10;%>
	<%!int num2 = 20;%>
	<%!int sum = 0;%>
	<%!int product = 0;%>

	<%-- Scriplet tag --%>
	<%
	sum = num1 + num2;
	product = num1 * num2;
	%>
	<%-- Expression tag --%>
	Sum of 10 and 20 is:
	<%=sum%>
	<br> Product of 10 and 20 is:
	<%=product%>
</body>
</html>