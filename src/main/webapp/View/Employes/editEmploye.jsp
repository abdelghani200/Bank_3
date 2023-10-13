<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Employe</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ressources/css/add.css">
</head>
<body>

<c:if test="${not empty requestScope.error}">
    <div class="error-message">
        Error: ${requestScope.error}
    </div>
</c:if>
<div class="container">
    <h1>Edit Employe</h1>

    <form action="${request.contextPath}/Employes?action=update" method="post">
        <input type="hidden" name="action" value="edit">
        <label for="matricule">Matricule:</label>
        <input type="text" id="matricule" name="matricule" value="${employe.matricule}" readonly><br>
        <label for="nom">Last Name:</label>
        <input type="text" id="nom" name="nom" value="${employe.nom}" required><br>
        <label for="prenom">First Name:</label>
        <input type="text" id="prenom" name="prenom" value="${employe.prenom}" required><br>
        <label for="datenaissance">Date of Birth (YYYY-MM-DD):</label>
        <input type="date" id="datenaissance" name="datenaissance" value="${employe.dateNaissance}" required><br>
        <label for="daterecrutement">Date de Recrutement (YYYY-MM-DD):</label>
        <input type="date" id="daterecrutement" name="daterecrutement" value="${employe.dateRecrutement}" required><br>
        <label for="telephone">Phone:</label>
        <input type="text" id="telephone" name="telephone" value="${employe.telephone}" required><br>
        <label for="adressemail">Address:</label>
        <input type="text" id="adressemail" name="adresseEmail" value="<c:out value='${employe.adresseEmail}' />" required>
        <input type="submit" value="Update Employe">
    </form>
</div>
</body>
</html>
