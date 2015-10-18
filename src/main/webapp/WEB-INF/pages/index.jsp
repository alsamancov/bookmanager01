<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:template>
    <c:if test="${!empty books}">
        <table class="book-list-table">
            <tr>
                <th>Name</th>
                <th>Genre</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach items="${books}" var="book">
                <tr>
                    <td>${book.name}</td>
                    <td>${book.genre}</td>
                    <td><a href="javascript:BookUtil.deleteBook(${book.id})">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <a href="addBook">Add book</a>
</t:template>
