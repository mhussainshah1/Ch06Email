<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         language="java" import="java.time.LocalDate"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html"/>
<h1>Join our email list</h1>
<p>To join our email list, enter your name and email address below.</p>

<c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if>

<%
    String message = (String) request.getAttribute("message");
    if (message != null) {
        int i = 1;
%>
<p><i><%= message%>
</i></p>
<%
    }
%>
<c:if test="${user.wantsUpdates == 'Yes'}">
    <p>This user wants updates</p>
</c:if>

<form action="emailList" method="post">
    <input type="hidden" name="action" value="add">

    <label class="pad_top" for="email">Email : </label>
    <input type="email" id="email" name="email" value="${user.email}"><br>

    <label class="pad_top" for="firstName">First Name: </label>
    <input type="text" id="firstName" name="firstName" value="${user.firstName}"><br>

    <label class="pad_top" for="lastName">Last Name: </label>
    <input type="text" id="lastName" name="lastName" value="${user.lastName}"> <br>

    <label class="pad_top" for="submit">Sent: </label>
    <input class="margin_left" type="submit" id="submit" name="submit" value="Join Now">
</form>
<c:import url="/includes/footer.jsp"/>