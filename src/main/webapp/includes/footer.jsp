<%@ page import="java.time.LocalDate" %>
<%
    LocalDate currentDate = LocalDate.now();
    int currentYear = currentDate.getYear();
%>
<p>&copy; Copyright <%= currentYear %> Mike Murach &amp; Associates</p>
</body>
</html>