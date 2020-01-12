<%-- 
    Document   : 1
    Created on : 07-01-2020, 02:48:12
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
        <title>Aplicaciones JAVA | Elimina vocales</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h2>Elimina vocales</h2>    
            <h3>Ingresa 5 palabras a continuación</h3> 
        </div>
        <form action="./2.jsp" method="post">
            <br><input type="text" name="string_1"><br>
            <br><input type="text" name="string_2"><br>
            <br><input type="text" name="string_3"><br>
            <br><input type="text" name="string_4"><br>
            <br><input type="text" name="string_5"><br>
            <input type="submit" value="Eliminar vocales">
            </form>
        <%= funciones.Lab02.RemoveVowels(request.getMethod(), request.getParameter("string_1"), request.getParameter("string_2"), request.getParameter("string_3"),
                request.getParameter("string_4"), request.getParameter("string_5")) %>
        <button onclick="window.location.href = '../index.html';">Volver al inicio</button>
    </body>
</html>