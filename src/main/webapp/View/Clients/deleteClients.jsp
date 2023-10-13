<%--
  Created by IntelliJ IDEA.
  User: adm
  Date: 11/10/2023
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Client</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ressources/css/delete.css">
</head>
<body>
<div class="container">
    <h1>Delete Client</h1>
    <form action="${request.contextPath}/Clients?action=delete" method="post">
        <input type="hidden" name="action" value="delete">
        <input type="hidden" name="code" value="${client.code}">
        <p>Are you sure you want to delete this client?</p>
        <input type="submit" value="Delete Client">
    </form>
</div>
</body>
</html>
