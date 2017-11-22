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
        <link rel="stylesheet" type="text/css" href="main.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <c:import url = "Header.jsp"/>
        </header>
        
        <ul>
            <li><a href="liste_series.jsp">Liste des séries</a></li>
        </ul>
        <table border="0">
            <tr><th>Titre</th><th>Annee</th><th>Durée</th><th>Synopsis</th></tr>
            <c:forEach items="${films}" var="film">
                <tr><td>${film.titre}</td><td>Row:1 Cell:2</td><td>Row:1 Cell:3</td><td>Row:1 Cell:4</td></tr>
            </c:forEach>
        </table>
        <footer>
            <c:import url = "Footer.jsp"/>
        </footer>
    </body>
</html>
