<%@ page import="java.time.LocalDate, murach.business.User"
         contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<c:import url="/includes/header.html" />--%>
<%--<%@ include file="/includes/header.html"%>--%>
<jsp:include page="/includes/header.html" />

<h1>Thanks for joining our email list</h1>
<p>Here is the information that you entered:</p>

<h1> 1)   JSP Tag</h1>
<%
    User user1 = (User) request.getAttribute("user");
    if (user1 == null) {
        user1 = new User();
    }
%>
<label>Email:</label> <span><%= user1.getEmail() %></span><br>
<label>First Name:</label> <span><%=user1.getFirstName()%></span><br>
<label>Last Name:</label> <span><%=user1.getLastName()%></span><br>

<h1>2) Standard JSP Tag</h1>
<jsp:useBean id="user" scope="session" class="murach.business.User"/>
<label>Email:</label><span><jsp:getProperty name="user" property="email"/></span><br>
<label>First Name:</label><span><jsp:getProperty name="user" property="firstName"/></span><br>
<label>Last Name:</label><span><jsp:getProperty name="user" property="lastName"/></span><br>

<h1> 3) EL</h1>
<label>Email:</label> <span>${user.email}</span><br>
<label>First Name:</label> <span>${user.firstName}</span><br>
<label>Last Name:</label> <span>${user.lastName}</span><br>

<h1> jsp:setProperty</h1>
<jsp:setProperty name="user" property="firstName" value="John" />
<jsp:setProperty name="user" property="lastName" value="O'Neil"/>
<jsp:setProperty name='user' property='lastName' value='O\'Neil'/>

<label>First Name:</label><span><jsp:getProperty name="user" property="firstName"/></span><br>
<label>Last Name:</label><span><jsp:getProperty name="user" property="lastName"/></span><br>

<p>This email address was added to our list on <%=LocalDate.now()%></p>
<%--<p>This email address was added to our list on <%=LocalDate.now()%></p>--%>
<!--<p>This email address was added to our list on <%=LocalDate.now()%> </p>-->

<p>To enter another email address, click on the Back button in your browser or the Return button shown below.</p>

<form action="" method="get">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
</form>

<%--<c:import url="/includes/footer.jsp" />--%>
<%--<%@ include file="/includes/footer.jsp"%>--%>
<jsp:include page="/includes/footer.jsp" />