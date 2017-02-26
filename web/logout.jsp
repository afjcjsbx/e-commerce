<%--
  Created by IntelliJ IDEA.
  User: afjcjsbx
  Date: 24/02/17
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

</body>
</html>

<%
    session.setAttribute("currentSessionUser", null);
    response.sendRedirect("index.jsp"); //logged-in page
%>
