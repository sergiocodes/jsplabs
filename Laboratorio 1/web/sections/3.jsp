<%-- 
    Document   : 1
    Created on : 07-01-2020, 00:52:04
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
        <title>Aplicaciones JAVA | Mayor de tres numeros</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h2>Mayor de 3 números</h2>            
        </div>
        <div>
            <h2>Ingresa los números</h2>  
            <form action="./3.jsp" method="post">
            Número 1: <br><input type="text" name="number_1"><br>
            Número 2: <br><input type="text" name="number_2"><br>
            Número 3: <br><input type="text" name="number_3"><br>
            <input type="submit" value="Ingresar">
            </form>
        </div>
        <%= 
            funciones.Lab01.MaxNumber(request.getMethod(), request.getParameter("number_1"), request.getParameter("number_2"), request.getParameter("number_3"))
        %>
    </body>
</html>
