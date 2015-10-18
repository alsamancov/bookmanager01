<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book manager</title>
</head>
<body>
<div>
    <h1>Book manager</h1>
    <c:if test="${!empty books}">
        <table>
            <tr>
                <th>Name</th>
                <th>Genre</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach items="${books}" var="book">
                <tr>
                    <td>${book.name}</td>
                    <td>${book.genre}</td>
                    <td><a href="/deleteBook/${book.id}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
<a href="addBook">Add book</a>

</body>
</html>
