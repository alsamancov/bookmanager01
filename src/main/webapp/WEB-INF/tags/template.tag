<%@tag description="Templates Tag" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<!DOCTYPE>
<html>
<head>
    <link href="<c:url value="/resources/c/main.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/s/bookUtil.js"/>"></script>
    <title>Book Manager</title>
</head>
<body>
<div class="content">
    <h1>Book Manager</h1>
    <jsp:doBody/>
</div>
</body>
</html>