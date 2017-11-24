<%-- 
    Document   : AjouterFilm
    Created on : 24 nov. 2017, 13:32:35
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
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url = "Header.jsp"/>
        <div id="container">   
            <div class="navig">
                <nav>
                    <ul>
                        <li><a href="/AtelierJavaWeb/lister_films">Liste des Films</a></li>
                        <li><a href="/AtelierJavaWeb/lister_series">Liste des séries</a></li>
                    </ul>
                </nav>
            </div>
            <div class="contenu">
                <h1>Nouveau film</h1>
                <form method="post" action="/AtelierJavaWeb/ajouter_film">
                    <label>Titre</label>
                    <input name="titre" />
                    <br>
                    <label>Synopsis</label>
                    <textarea name="synopsis"></textarea>
                    <br>
                    <label>Année</label>
                    <input name="annee" type="number" min="1900" max="2020" />
                    <br>
                    <label>Durée</label>
                    <input name="duree" type="number" min="1" />
                    <br>
                    <input type="submit" value="Enregistrer" />

                </form>    
            </div>
        </div>
        <c:import url = "Footer.jsp"/>
    </body>
</html>
