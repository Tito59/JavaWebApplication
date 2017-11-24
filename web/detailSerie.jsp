<%-- 
    Document   : detailFilm
    Created on : 24 nov. 2017, 15:11:01
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
                <!--<h1><%= ${serie} %></h1>-->
                   
            </div>
        </div>
        <c:import url = "Footer.jsp"/>
    </body>
</html>
