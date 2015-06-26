<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession misesion= request.getSession(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>LOOK'S</title>
         <link rel="stylesheet" href="estilo.css" />		
         <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster" />
         <link rel="icon" type="image/png" href="icon.ico"> 
</head>
<body>
    <ul class="posision3">
    <img  src="user.png" width="100%" height="60m"   align="right"><br><br><br>

          
</ul>
  <br>
 <img  src="log.png" width="45%" height="120m" ><br>
<br><br><br>
<h2>INGRESE EL LOOK QUE DESEE</h2>
<ul class="posision2">
<form action="ss" method="get" >
<br><br>Look: 
<select name="corte">
  <optgroup label="Hombres">
    <option value="volvo">Undercut</option>
    <option value="saab">Corto</opt  ion>
    <option value="saab">Largo</option>
 </optgroup>
  <optgroup label="Mujeres">
    <option value="mercedes">Corto</option>
    <option value="audi">Ondulado</option>
    <option value="audi">Flequillo</option>
    <option value="audi">Lacio</option>
    <option value="audi">En Capas</option>
    <option value="audi">Color</option>
  </optgroup>
  <optgroup label="Otros">
  
    <option value="Ninguno">Ninguno</option>
    </optgroup>
</select>

<br><br>Descripción Personalizada: <br><br>
<textarea rows="4" cols="50" name="desc" placeholder='Escriba su propia personalizacion (Corte) o consulte nuestros servicios'></textarea></td></tr>
<br><br>

<input type="submit" value="SEND" >

</form>
<br>
<form action="javascript:history.back()">
<input type="submit" value="BACK" >
<a href="index.jsp">CERRAR SESION</a>
</ul>


<table class="tabla2">
    <tr><td ><img  src="corto.jpg" width="150m" height="150m"  ></td>
    <td  td ><img  src="ondulado.jpg"  width="150m" height="150m"></td>
    <td  td ><img  src="flequillo.jpg"  width="150m" height="150m"></td></tr>
    <tr><td ><img  src="lacio.jpg" width="150m" height="150m"  ></td>
    <td  td ><img  src="encapas.jpg"  width="150m" height="150m"></td>
    <td  td ><img  src="color.jpg"  width="150m" height="150m"></td></tr>
</table>
<table class="tabla3">
    <tr><td ><img  src="under.jpg" width="150m" height="150m"  ></td>
    <td  td ><img  src="cort.jpg"  width="150m" height="150m"></td>
    <td  td ><img  src="larg.jpg"  width="150m" height="150m"></td></tr>
  
</table>


</body>
</html>