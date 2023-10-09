<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="model.Numero" %>
 <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adivina Numero</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>

<%! StringBuilder mostrar = new StringBuilder(""); %>
<%
session = request.getSession(true);

if (request.getParameter("numero") != null) {
    int numero = Integer.parseInt(request.getParameter("numero"));
    Numero n1 = new Numero();

    if (request.getParameter("enviar") != null) {
        n1.introducirCalculos(numero, mostrar);
        session.setAttribute("mostrar", mostrar.toString());
    }
}

// Obtener el valor de 'mostrar' desde la sesión
String mostrarValue = (String) session.getAttribute("mostrar");
if (mostrarValue != null) {
    mostrar = new StringBuilder(mostrarValue);
}

%>







<form method="post" action="index.jsp">
<div class="row">
</div>
<div class="row">
<div class="col-md-4">
</div>
<div class="col-md-4">
<div class="panel panel-primary">
 <div class="panel-heading">Adivina numero</div>
 <div class="panel-body">
 <div class="input-group">
 <label class="input-group-addon">Pista</label>
 <input type="text" class="form-control" name="resultado" id="resultado" value="<%out.print(mostrar); %>" aria-describedby="basic-addon3">
 </div>
 <br>
 <div class="input-group">
 <label class="input-group-addon" >Elige un numero</label>
 <input type="number" class="form-control" name="numero" id="numero">
 </div>
 <div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
	  
	<br>

 </div>
 </div>
<br>

 <button type="submit" class="btn btn-primary btn-lg btn-block" id="enviar" name="enviar" value="enviar">Enviar</button>

 </div>
 </div>
</div>
</div>
</form>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 
</body>
</html>