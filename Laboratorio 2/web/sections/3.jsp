<%-- 
    Document   : 1
    Created on : 07-01-2020, 03:15:17
    Author     : sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="funciones.Lab02" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Aplicaciones JAVA | Más dígitos iguales</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h2>Más dígitos iguales</h2>    
            <h3>Ingresa 3 números reales</h3> 
        </div>
        <form action="./3.jsp" method="post">
            <br><input type="text" name="num_1"><br>
            <br><input type="text" name="num_2"><br>
            <br><input type="text" name="num_3"><br>
            <input type="submit" value="Obtener numero con mayor repetición de cifras">
            </form>
        <%= funciones.Lab02.GetMaxDigits(request.getMethod(), request.getParameter("num_1"), request.getParameter("num_2"), request.getParameter("num_3")) %>
    <button onclick="window.location.href = '../index.html';">Volver al inicio</button>
    </body>
</html>