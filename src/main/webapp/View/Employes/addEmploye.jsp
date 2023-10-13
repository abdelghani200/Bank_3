<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: adm
  Date: 12/10/2023
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Add Client</title>
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
    <h1>Ajouter un Client</h1>
    <form action="${request.contextPath}/Employes?action=add" method="post">
        <input type="hidden" name="action" value="add">
        <label for="matricule">Matricule:</label>
        <input type="text" id="matricule" name="matricule" required><br>
        <label for="nom">Nom:</label>
        <input type="text" id="nom" name="nom" required><br>
        <label for="prenom">Prenom:</label>
        <input type="text" id="prenom" name="prenom" required><br>
        <label for="datenaissance">Date de Naissance (YYYY-MM-DD):</label>
        <input type="date" id="datenaissance" name="datenaissance" required><br>
        <label for="daterecrutement">Date de Recrutement (YYYY-MM-DD):</label>
        <input type="date" id="daterecrutement" name="daterecrutement" required><br>
        <label for="telephone">Tel:</label>
        <input type="text" id="telephone" name="telephone" required><br>
        <label for="adresseEmail">Adresse Email:</label>
        <input type="text" id="adresseEmail" name="adresseEmail" required><br>
        <input type="submit" value="Add Employe">
    </form>
</div>
</body>
</html>
