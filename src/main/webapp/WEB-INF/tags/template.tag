<%@tag description="Templates Tag" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!doctype>
<html>
<head>
    <meta charset="utf-8">
    <link href="<c:url value="/resources/c/main.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/s/bookUtil.js" />"></script>

    <title>Book Manager</title>

    <!-- класс "login-link-container" должен присутствовать в main.css -->
    <div class="login-link-container">
        <sec:authorize access="isAnonymous()">
            <p>
                <a href="/spring_security_login">Sign In</a>
            </p>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <a href="/j_spring_security_logout">Sign Out</a>
        </sec:authorize>
    </div>

</head>
<body>
<div class="content">
    <h1>Book Manager</h1>
    <jsp:doBody/>
</div>
</body>
</html>