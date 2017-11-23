<%-- 
    Document   : liste_series
    Created on : 22 nov. 2017, 12:27:06
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
    <ul>
        <li><a href="/AtelierJavaWeb/lister_films">Liste des films</a></li>
    </ul>
    <h1>Liste des séries</h1>
    <c:import url = "Footer.jsp"/>
</body>
</html>
