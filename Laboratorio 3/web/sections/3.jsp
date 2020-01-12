<%-- 
    Document   : 1
    Created on : 07-01-2020, 02:17:26
    Author     : sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="funciones.Lab03" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Aplicaciones JAVA | Genera PDF con números ordenados</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h2>Genera PDF con números ordenados</h2>               
        </div>
        <form action="./3.jsp" method="post">
            <br><input type="text" name="n_1"><br>
            <br><input type="text" name="n_2"><br>
            <br><input type="text" name="n_3"><br>
            <br><input type="text" name="n_4"><br>
            <br><input type="text" name="n_5"><br>
            <br><input type="text" name="n_6"><br>
            <br><input type="text" name="n_7"><br>
            <br><input type="text" name="n_8"><br>
            <br><input type="text" name="n_9"><br>
            <button  type="submit">Ordenar numeros en pdf</button>
        </form>
         <%=
                funciones.Lab03.GenerateOrderedNumbers(request.getMethod(), request.getParameter("n_1"), request.getParameter("n_2"), request.getParameter("n_3"), request.getParameter("n_4"),request.getParameter("n_5"),
                request.getParameter("n_6"), request.getParameter("n_7"), request.getParameter("n_8"), request.getParameter("n_9"))
           %>
        <button onclick="window.location.href = '../index.html';">Volver al inicio</button>
    </body>
</html>