<%-- 
    Document   : connexion
    Created on : 27 nov. 2017, 13:42:48
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
                <c:import url="_NAV.jsp"/>
            </div>
            <div class="contenu">
                <h1>Identifiez-vous</h1>
                <from style="text-align: center;">
                    <label>Pseudo</label>
                    <input type="text" name="pseudo"/>
                    <br>
                    <label>Mot de passe</label>
                    <input type="password" name="mdp"/>
                    <br>
                    <input type="submit" value="Connexion"/>
                </from>
            </div>
        </div>
        <c:import url = "Footer.jsp"/>
    </body>
</html>
