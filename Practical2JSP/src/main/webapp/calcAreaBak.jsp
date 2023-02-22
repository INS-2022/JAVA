<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Area of Shape</title>
</head>
<body>

<%
	String shape = request.getParameter("shape");	
	switch (shape){
	case "circle":
		Double radius = Double.parseDouble(request.getParameter("dim1"));
		out.print("The area of circle is "+(radius*radius*3.142));
		break;
	case "square":
		Double side = Double.parseDouble(request.getParameter("dim1"));
		out.print("The area of Square is "+(side*side));
		break;
	case "triangle":
		Double side1 = Double.parseDouble(request.getParameter("dim1"));
		Double side2 = Double.parseDouble(request.getParameter("dim2"));
		Double side3 = Double.parseDouble(request.getParameter("dim3"));
		Double sp = (side1+side2+side3)/2;
		out.print(sp);
		out.print("The area of Triangle is "+Math.sqrt(sp*(sp-side1)*(sp-side2)*(sp-side3)));
		break;
	case "rectangle":
		Double length = Double.parseDouble(request.getParameter("dim1"));
		Double bredth = Double.parseDouble(request.getParameter("dim2"));
		Double area = length*bredth;
		out.print("The area of rectangle is "+area);
		break;
		
	};
%>
</body>
</html>