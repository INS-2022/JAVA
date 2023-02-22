<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Demo</title>
</head>
<body>
    <h1>JSP Demo</h1>
    <p>This is a demo of JSP directives.</p>
    
    <%-- Config Directive --%>
    <p>The application name is <%= getServletContext().getInitParameter("appName") %>.</p>
    
    <%-- Request Directive --%>
    <p>The request method is <%= request.getMethod() %>.</p>
    
    <%-- Response Directive --%>
    <% response.setContentType("text/html"); %>
    <% response.getWriter().println("This is a response directive example."); %>
    
    <%-- Out Directive --%>
    <% out.println("<p>The current date and time is: " + new Date() + "</p>"); %>
    
    <%-- Session Directive --%>
    <% 
        session.setAttribute("username", "johndoe"); 
        String username = (String) session.getAttribute("username"); 
    %>
    <p>Welcome <%= username %>! This is a session directive example.</p>
</body>
</html>

