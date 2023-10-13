<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Client</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ressources/css/add.css">
</head>
<body>
<c:import url="/View/Templetes/header.jsp" />
<c:if test="${not empty requestScope.error}">
    <div class="error-message">
        Error: ${requestScope.error}
    </div>
</c:if>
<div class="container">
    <h1>Edit Client</h1>
    <form action="${request.contextPath}/Clients?action=update" method="post">
        <input type="hidden" name="action" value="edit">
        <label for="code">Client Code:</label>
        <input type="text" id="code" name="code" value="${client.code}" readonly><br>
        <label for="nom">Last Name:</label>
        <input type="text" id="nom" name="nom" value="${client.nom}" required><br>
        <label for="prenom">First Name:</label>
        <input type="text" id="prenom" name="prenom" value="${client.prenom}" required><br>
        <label for="datenaissance">Date of Birth (YYYY-MM-DD):</label>
        <input type="date" id="datenaissance" name="datenaissance" value="${client.dateNaissance}" required><br>
        <label for="telephone">Phone:</label>
        <input type="text" id="telephone" name="telephone" value="${client.telephone}" required><br>
        <label for="adresse">Address:</label>
        <input type="text" id="adresse" name="adresse" value="${client.adresse}" required><br>
        <input type="submit" value="Update Client">
    </form>
</div>
</body>
</html>
