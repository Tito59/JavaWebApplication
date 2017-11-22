<%-- 
    Document   : liste_films
    Created on : 22 nov. 2017, 12:07:06
    Author     : Formation
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ul>
            <li><a href="liste_series.jsp">Liste des séries</a></li>
        </ul>
        <h1>Liste des films</h1>
        <c:forEach items="${films}" var="film">
            ${film.titre}<br/>
        </c:forEach>
    </body>
</html>
