<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Use of Java Building Blocks</title>
</head>
<body>
	<h2>using TagLib tags</h2>
	<p>
		<c:set var="i1" value="5" />
		<c:set var="i2" value="6" />
		<c:out value="i1 = ${i1}" />
		<br>
		<c:out value="i2 = ${i2}" />
		<br>
		<c:out value="Printing using c:out" />
		<br>
		<c:out value="Printing  true if i1 < i2" />
		<br>
		<c:if test="${i1 <i2 }">
			<c:out value=" true " />
		</c:if>
		<br>
		<c:forEach var="i" items="1,4,5,6,7,8,9">
Item <c:out value="No. ${i}" />
			<p>
		</c:forEach>
		<br>
	</p>
	<h2>Using useBean Tags</h2>
	<jsp:useBean id="student" class="vesit.Student" />
	<jsp:setProperty name="student" property="name"
		value="Prathamesh Ingale" />
	<jsp:setProperty name="student" property="dept" value="MCA" />
	Name:
	<jsp:getProperty property="name" name="student" /><br>
	Department:
	<jsp:getProperty property="dept" name="student" /><br>
</body>
</html>