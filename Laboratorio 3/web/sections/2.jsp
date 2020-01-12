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
        <title>Aplicaciones JAVA | Genera PDF con imagenes</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h2>Genera PDF con imagenes</h2>               
        </div>
        <img src="./1.png" name='img_1' style="height: 10%; width: 10%;">
        <img src="./2.jpg" name='img_2' style="height: 10%; width: 10%;">
        <img src="./3.jpg" name='img_3' style="height: 10%; width: 10%;">
        <img src="./4.jpg" name='img_4' style="height: 10%; width: 10%;">
        <img src="./5.jpg" name='img_5' style="height: 10%; width: 10%;">        
        <form action="./2.jsp" method="post">
            <button  type="submit">Generar pdf</button>
        </form>
         <%=
                funciones.Lab03.GenerateImagesPDF(request.getMethod())
           %>
        <button onclick="window.location.href = '../index.html';">Volver al inicio</button>
    </body>
</html>