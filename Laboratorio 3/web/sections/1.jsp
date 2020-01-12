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
        <title>Aplicaciones JAVA | Genera PDF con matriz random</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h2>Genera PDF con matriz random</h2>               
        </div>
        <form action="./1.jsp" method="post">
            <button  type="submit">Generar tabla en pdf</button>
        </form>
         <%=
                funciones.Lab03.GeneratePDFTable(request.getMethod())
           %>
           
           <button onclick="window.location.href = '../index.html';">Volver al inicio</button>
    </body>
</html>