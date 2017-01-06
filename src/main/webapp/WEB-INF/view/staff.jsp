<%--
  Created by IntelliJ IDEA.
  User: Justinas
  Date: 2017-01-06
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<c:forEach var="barber" items="${barbers}">
    ${barber.firstName}
    ${barber.lastName}
    ${barber.phone}
</c:forEach>

</body>
</html>
