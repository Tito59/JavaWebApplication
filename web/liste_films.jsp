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
                    </ul>
                </nav>
            </div>
            <div class="contenu">
                <table border="0">
                    <tr><th>Titre</th><th>Annee</th><th>Durée</th><th>Synopsis</th></tr>
                            <c:forEach items="${films}" var="film">
                        <tr><td>${film.titre}</td><td>${film.annee}</td><td>${film.duree}</td><td>${film.synopsis}</td></tr>
                    </c:forEach>
                </table>
                <p></p>
                
            </div>
        </div>
        
        <c:import url = "Footer.jsp"/>
    </body>
</html>
