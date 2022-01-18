<%--
  Created by IntelliJ IDEA.
  User: DAKAL
  Date: 03/04/2021
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h1>HTTP Status 403 - Access is denied</h1>
<h2>${msg}</h2>
<c:url value="/main" var="logoutUrl"/>
<a href="${logoutUrl}">Back Home</a>
</body>
</html>
