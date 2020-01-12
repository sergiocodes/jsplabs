<%-- 
    Document   : 1
    Created on : 06-01-2020, 23:41:55
    Author     : sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="funciones.Lab01" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Aplicaciones JAVA | Ingresa tu nombre</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h2>¡Hola! Ingresa tu nombre</h2>            
        </div>
        <div>
            <form action="./1.jsp" method="post">
            Nombre: <br><input type="text" name="firstname"><br>
            <input type="submit" value="Ingresar">
            </form>
        </div>
        <%= funciones.Lab01.NameIterator(request.getMethod(), request.getParameter("firstname"), 30) %>
    <button onclick="window.location.href = '../index.html';">Volver al inicio</button>
    </body>
</html>
