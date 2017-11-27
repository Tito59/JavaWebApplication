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
                <c:import url="_NAV.jsp"/>
            </div>
            <div class="contenu">
                <h1>Liste des films</h1>

                <c:forEach items="${films}" var="film">                
                    <table border="1" class="lienfilm">
                        <tr ><td rowspan=3><img src="${film.image}" height="200" width="150"/><br>${film.titre}<br>${film.annee}</td></tr>
                    </table>               
                </c:forEach>
                
            </div>
        </div>

        <c:import url = "Footer.jsp"/>
    </body>
</html>
