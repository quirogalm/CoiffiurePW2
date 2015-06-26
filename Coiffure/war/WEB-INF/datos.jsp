<%@page import="unsa.com.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession misesion= request.getSession(); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>DATOS</title>
         <link rel="stylesheet" href="estilo.css" />		
         <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster" />
         <link rel="icon" type="image/png" href="icon.ico"> 
</head>
<body>
<ul class="posision">
            <ul class="fancyNav" >
                <li id="about"><a href="index.jsp">LogOut</a></li>
                 </ul>
</ul>


 <ul class="posision1">
    <img  src="user.png" width="100%" height="70m"   align="right">
    </ul>
  <br>
 <img  src="log.png" width="45%" height="120m" ><br>
 
 

<br><br> 
<h2>RESERVE SU CITA</h2>
INGRESE SUS DATOS
<ul class="posision2">
<form action="sesion" method="get">
 
 
<br> 
Nombres:
<input type=text required pattern="[a-zA-Z]+(\s)*[a-zA-Z]*"  name=nombre placeholder='Nombre' value="<%misesion.getAttribute("nombre");%>"><br><br>

Apellidos:
<input type=text  required pattern="[a-zA-Z]+(\s)*[a-zA-Z]*"  name=apellidos  placeholder='Nombre' value="<%misesion.getAttribute("apellido");%>">

<br><br>Sexo: <br>
<input type="radio" name="sex" value="H"> Hombre<br>
<input type="radio" name="sex" value="M"> Mujer

<br><br>Correo:<br>
<input type="email"  required pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$"   name=correo  placeholder='Correo Electronico' value="<%misesion.getAttribute("correo");%>" >
<br><br>
 <input type="reset" value="Limpiar"/><input type="submit" value="REGISTRAR" name="cambio">
</form>

</ul>
</body>
</html>