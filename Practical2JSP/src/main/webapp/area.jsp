<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Area Calculator</title>
</head>
<body>
	<form action="CalculateArea.jsp">

		<label for="shape">Shape: </label> <select name="shape" id="shape">
			<option value="square">Square</option>
			<option value="circle">Circle</option>
			<option value="triangle">Triangle</option>
			<option value="rectangle">Rectangle</option>
		</select>
		<br>
		<input type="submit" value="Enter Dimensions">
	</form>
</body>
</html>