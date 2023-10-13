<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ressources/css/acceuil.css">
</head>
<body>
<c:import url="/View/Templetes/header.jsp" />
<section class="hero">
    <h2>Welcome to EasyBank</h2>
    <p>Your One-Stop Financial Solution</p>
    <a href="about.html" class="cta-button">Learn More</a>
</section>

<section class="features">
    <div class="feature">
        <h3>Online Banking</h3>
        <p>Access your account 24/7 from anywhere in the world.</p>
        <img src="../../ressources/img/images.png" alt="Online Banking Image">
    </div>
    <div class="feature">
        <h3>Savings Accounts</h3>
        <p>Start saving with our high-yield savings accounts.</p>
        <img src="../../ressources/img/eazybank.webp" alt="Savings Accounts Image">
    </div>
    <div class="feature">
        <h3>Loans & Mortgages</h3>
        <p>Get competitive rates on loans and mortgages.</p>
        <img src="../../ressources/img/eazybank_king.jpeg" alt="Loans & Mortgages Image">
    </div>
</section>
<footer>
<c:import url="/View/Templetes/footer.jsp" />
</footer>
</body>
</html>
