<%-- 
    Document   : 2
    Created on : 07-01-2020, 00:30:52
    Author     : sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="funciones.Lab01" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aplicaciones JAVA | Prueba sencilla</title>
    </head>
    <body>
        <h2>Resultados</h2> 
        <h2>Tu nota es: 
        <%= funciones.Lab01.TestSolver(request.getParameter("answer_1"), request.getParameter("answer_2"), request.getParameter("answer_3")) %></h2>
    </body>
</html>
