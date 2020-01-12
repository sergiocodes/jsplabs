<%-- 
    Document   : 1
    Created on : 07-01-2020, 02:17:26
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
        <title>Aplicaciones JAVA | Matriz de multiplicación</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h2>Tabla de multiplicación, del 1 al 10</h2>               
        </div>
        <%= funciones.Lab02.MatrixGenerator(10) %>
        <button onclick="window.location.href = '../index.html';">Volver al inicio</button>
    </body>
</html>