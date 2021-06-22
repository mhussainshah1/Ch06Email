<%@ page import="murach.business.User" %>
<%@ page import="murach.data.UserDB" %><%--
  Created by IntelliJ IDEA.
  User: Owner
  Date: 6/20/2021
  Time: 6:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Not Recommended</title>
</head>
<body>

<%
    var firstName = request.getParameter("firstName");
    var lastName = request.getParameter("lastName");
    var email = request.getParameter("email");

  /*
   User user = new User(firstName, lastName, email);
   UserDB.insert(user);
   */
%>

</body>
</html>
