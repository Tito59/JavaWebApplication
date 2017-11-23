<%-- 
    Document   : liste_films
    Created on : 22 nov. 2017, 12:07:06
    Author     : Formation
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% double num = Math.random();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main.css?<%=num%>" />
        <title>Mon Site</title>
    </head>
    <body>
        <c:import url = "Header.jsp"/>
        
        <div id="container">   
            <div class="navig">
                <nav>
                    <ul>
                        <li><a href="/AtelierJavaWeb/lister_series">Liste des séries</a></li>
                        <li><a href="/AtelierJavaWeb/lister_series">Liste des épisodes</a></li>
                    </ul>
                </nav>
            </div>
            <div class="contenu">
                <h1>Liste des films</h1>
                <table border="1">
                    <tr><th>Titre</th><th>Annee</th><th>Durée</th><th>Synopsis</th></tr>
                            <c:forEach items="${films}" var="film">
                        <tr><td id="center">${film.titre}</td><td id="center">${film.annee}</td><td id="center">${film.duree}</td><td>${film.synopsis}</td></tr>
                    </c:forEach>
                </table>
                <img src="http://t2.gstatic.com/images?q=tbn:ANd9GcQ3xpYBhY-49Sk19th7zqZv7jtwAjUrRptOgrfVPu8XpKkAkjdu" width="150" height="200"/>
                <img src="http://www.critikat.com/wp-content/uploads/2010/04/artoff906.jpg" height="200" width="150"/>
                <img src="http://t2.gstatic.com/images?q=tbn:ANd9GcTtCSsn8gY9jEmBZnPgylDUMrirq9-WVtNwwcY2_rffiIlByNbf" height="200" width="150"/>
                <img src="http://t1.gstatic.com/images?q=tbn:ANd9GcQ21gqNuRI6tFYoDvXXl8Yu1A1K0pVjGQT7ObEpju3T7PeOstuq" height="200" width="150"/>
            </div>
        </div>
        
        <c:import url = "Footer.jsp"/>
    </body>
</html>
