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
        <div id="container">   
            <div class="navig">
                <c:import url="_NAV.jsp"/>
            </div>
            <div class="contenu">
                <h1>Liste des séries</h1>

                <c:forEach items="${series}" var="serie">
                    
                        <table border="1" class="lienfilm">
                            <tr><td rowspan=3><a href="detailSerie.jsp?serie=${serie.id}"><img src="${serie.image}" height="200" width="150"/></a><br>${serie.titre}</td></tr>
                        </table>
                     
                </c:forEach>

            </div>
        </div>
        <c:import url = "Footer.jsp"/>
    </body>
</html>
