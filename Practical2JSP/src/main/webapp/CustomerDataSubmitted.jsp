<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><c:out value=" Welcome ${param.CutomerName}" /></title>
</head>
<body>
	<c:choose>
		<c:when
			test="${param.CutomerName != null && param.CustomerEmailAddress != null && param.CutomerPhoneNo != null }">
			<c:catch var="exp">
				<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
					url="jdbc:mysql://localhost:3306/java_app" user="java_app"
					password="java_app_pass" />
				<sql:update dataSource="${db}" var="count">
INSERT INTO customers (name, email, phoneNo) VALUES (?, ?, ?)
<sql:param value="${param.CutomerName }" />
					<sql:param value="${param.CustomerEmailAddress }" />
					<sql:param value="${param.CutomerPhoneNo }" />
				</sql:update>
				<c:out
					value=" Hi ${param.CutomerName}, You have been successfully registered." />
			</c:catch>
		</c:when>
		<c:otherwise>
			<c:redirect url="CustomerData.jsp">
				<c:param name="error" value="true"></c:param>
				<c:param name="errorMessage" value="Data not Entered Correctly"></c:param>
			</c:redirect>
		</c:otherwise>
	</c:choose>
	<c:if test="${exp != null}">
		<c:redirect url="CustomerData.jsp">
			<c:param name="error" value="true"></c:param>
			<c:param name="errorMessage" value="Database Error"></c:param>
		</c:redirect>
	</c:if>
</body>
</html>