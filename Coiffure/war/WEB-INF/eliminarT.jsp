<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="unsa.com.*"%>
<%@ page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession misesion= request.getSession(); %>

<% List<Trabajador> trabajos = (List<Trabajador>)request.getAttribute("trabajos");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
      <title>ELIMINAR TRABAJADOR</title>
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
<body bgcolor=#D8F781>
<br><br><br><br><br><br>
 <h2>ELIMINAR TRABAJADOR</h2>
 <center>
    
 
 <table class=tabla5>
 <thead>
<tr><th>TRABAJADOR</th> 
<th>NOMBRE</th>
 <th>ESPECIALIDAD</th>
  <th>EDAD</th>
   <th>CORREO</th>
    </tr>
     </thead>
<tbody>
<%for( Trabajador t : trabajos ) {%>

 <tr class="color">
		<td><%= t.getId() %></td>
		<td><%= t.getNombre() %></td>
		<td><%= t.getEsp() %></td>
		<td><%= t.getEdad() %></td>
		<td><%= t.getCorreo() %></td>
	 </tr>

<%}%>

 </tbody>
</table>

<form action = 'mauricio' method='get'>
Ingrese el correo del Trabajador que desea eliminar<br>
<input type="email" required pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$"  name="delete"  placeholder="ejemplo@ejemplo.com"><br>
<input type="submit" value="Eliminar">
</form>
   </center>
</body>
</html>