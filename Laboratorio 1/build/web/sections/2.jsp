<%-- 
    Document   : 2
    Created on : 07-01-2020, 00:27:12
    Author     : sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="funciones.Lab01" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aplicaciones JAVA | Prueba sencilla</title>
    </head>
    <body>
        <h2>Cuestionario de cultura general</h2>      
        
        <form action="2_results.jsp" method="post">
            <p>La estrella más cercana a la tierra, después del sol, es:</p>
              <input type="radio" name="answer_1" value="1">Luna<br>
              <input type="radio" name="answer_1" value="2">Alfa Centauri<br>
              <input type="radio" name="answer_1" value="3">Rigel<br>  

            <p>El hombre llegó por primera vez a la luna en el año:</p>
              <input type="radio" name="answer_2" value="1">1969<br>
              <input type="radio" name="answer_2" value="2">1956<br>
              <input type="radio" name="answer_2" value="3">1980<br>  
              
            <p>¿Cuánto demora aproximadamente en llegar la luz del sol a la tierra?</p>
              <input type="radio" name="answer_3" value="1">Es instantáneo<br>
              <input type="radio" name="answer_3" value="2">Entre 7 y 8 minutos<br>
              <input type="radio" name="answer_3" value="3">3 horas<br>  

            <button type="submit">Revisar cuestionario</button>  
        </form>
    </body>
</html>
