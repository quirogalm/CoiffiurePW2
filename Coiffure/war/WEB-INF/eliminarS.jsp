<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
<%@ page import="unsa.com.*"%>
<%@ page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession misesion= request.getSession(); %>

<% List<Servicios> servicio = (List<Servicios>)request.getAttribute("servicio");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
      <title>ELIMINAR SERVICIO</title>
         <link rel="stylesheet" href="estilo.css" />		
         <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster" />
         <link rel="icon" type="image/png" href="icon.ico"> 
</head>
<body>
      <ul class="posision1">
    <img  src="ad.png" width="100%" height="70m"   align="right">
    </ul>
    
    <ul class="posision6">
          <ul class="fancyNav" >
                <li id="about"><a href="citas.jsp">Citas</a></li>
                <li id="services"><a href="eliminar.jsp">Eliminar</a></li>
                <li id="about"><a href="registrar.jsp">Registrar</a></li>
                 <li id="about"><a href="trabajador.jsp">New Trabajador</a></li>
                  <li id="about"><a href="servicio.jsp">New Servicio</a></li>
                 <li id="about"><a href="eliminarT.jsp">Eliminar Trab</a></li>
                 <li id="about"><a href="eliminarS.jsp">Eliminar Serv</a></li>    
              <li id="about"><a href="eliminarR.jsp">Registrados</a></li> 
                 <li id="about"><a href="index.jsp">LogOut</a></li>
            </ul>
</ul>

  <br>
 <img  src="log.png" width="45%" height="120m" >
<body>
<br><br><br><br><br><br>
 <h2>ELIMINAR SERVICIOS</h2>
 <center>
<table class=tabla5>
 
 <thead>

<th>SERVICIOS</th>
 <th>PRECIOS</th>
    </tr>
     </thead>
<tbody>
<%for( Servicios s : servicio ) {%>

 <tr class="color">
		
		<td><%= s.getServicio() %></td>
		<td><%= s.getPrecio() %></td>
		
	 </tr>

<%}%>

 </tbody>
</table>

<form action = 'mauricio1' method='get'>
Ingrese el Servicio que desea eliminar<br>
<input type="texto" required pattern="[a-zA-Z]+(\s)*[a-zA-Z]*" name="delete"  placeholder=Servicio><br>
<input type="submit" value="Eliminar">
</form>
</center>
</body>
</html>