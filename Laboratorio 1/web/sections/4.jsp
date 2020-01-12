<%-- 
    Document   : 1
    Created on : 07-01-2020, 01:30:14
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
        <title>Aplicaciones JAVA | Calculadora potencia</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h2>Calculadora de potencia enésima</h2>            
        </div>
        <div>
            <h2>Ingresa base y exponente</h2>  
            <form action="./4.jsp" method="post">
            Base: <br><input type="text" name="base"><br>
            Exponente: <br><input type="text" name="exponente"><br>
            <input type="submit" value="Ingresar">
            </form>
        </div>
        <%= 
            funciones.Lab01.ExpNumber(request.getMethod(), request.getParameter("base"), request.getParameter("exponente"))
        %>
    <button onclick="window.location.href = '../index.html';">Volver al inicio</button>
    </body>
</html>
