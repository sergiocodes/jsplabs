<%-- 
    Document   : 1
    Created on : 07-01-2020, 04:01:36
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
        <title>Aplicaciones JAVA | Encriptación simple</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h2>Encriptación simple</h2>    
            <h3>Ingresa las palabras que deseas encriptar</h3> 
        </div>
        <form action="./5.jsp" method="post">
            <br><input type="text" name="pal_1"><br>
            <br><input type="text" name="pal_2"><br>
            <br><input type="text" name="pal_3"><br>
            <br><input type="text" name="pal_4"><br>
            <br><input type="text" name="pal_5"><br>
            <input type="submit" value="Encriptar palabras">
            </form>
        <%= funciones.Lab02.GetEncripted(request.getMethod(), request.getParameter("pal_1"), request.getParameter("pal_2"), request.getParameter("pal_3"),
                request.getParameter("pal_4"), request.getParameter("pal_5")) %>
    <button onclick="window.location.href = '../index.html';">Volver al inicio</button>
    </body>
</html>