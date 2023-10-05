<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Adivina el número</title>
</head>
<body>
    <h1>Adivina el número entre 1 y 100</h1>
    
    <% 
    int numeroSecreto = (int)(Math.random() * 100) + 1;
    
    int intentos = 10;
    
    String mensaje = "";
    if (request.getParameter("numero") != null) {
        int numero = Integer.parseInt(request.getParameter("numero"));
        if (numero == numeroSecreto) {
            mensaje = "¡Felicidades! Has adivinado el número.";
        } else if (numero < numeroSecreto) {
            mensaje = "El número secreto es más alto. Intenta de nuevo.";
            intentos--;

        } else {
            mensaje = "El número secreto es más bajo. Intenta de nuevo.";
            intentos--;

        }
    }
    %>

    <p><%= mensaje %></p>
    
    <p>Intentos restantes: <%= intentos %></p>
    
    <form action ="index.jsp" method="get">
        <input type="number" name="numero">
        <input type="submit" value="Adivinar">
    </form>
</body>
</html>