<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Area of Shape</title>
</head>
<body>
	<form action="getArea.jsp">
		<%
		String shape = request.getParameter("shape");
		if (request.getParameter("shape") == null) {
			response.sendRedirect("area.jsp");
		}
		%>
		<h1>
			Enter dimensions for
			<%=request.getParameter("shape")%></h1>

		<input type="text" name="shape" hidden="true"
			value="<%=request.getParameter("shape")%>"> <label
			for="dim1">Enter Dimension 1: </label> <input type="number"
			name="dim1"></input> <br>
		<%
		if (shape.equals("rectangle") || shape.equals("triangle")) {
			out.print("<label for='dim2'>Enter Dimension 2: </label>\n");
			out.print("<input type='number' name='dim2'></input>\n");
			out.print("<br>");
		}
		%>

		<%
		if (shape.equals("triangle")) {
			out.print("<label for='dim3'>Enter Dimension 3: </label>\n");
			out.print("<input type='number' name='dim3'></input>\n");
			out.print("<br>");
		}
		%>
		<input type="submit" value="Get Area">
	</form>
</body>
</html>