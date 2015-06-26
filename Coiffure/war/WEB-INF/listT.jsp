<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="unsa.com.*"%>
<%@ page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession misesion= request.getSession(); %>

<% List<Trabajador> trabajos = (List<Trabajador>)request.getAttribute("trabajos");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
   <title>REGISTRAR</title>
         <link rel="stylesheet" href="estilo.css" />		
         <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster" />
         <link rel="icon" type="image/png" href="icon.ico"> 
</head>
<body>
<ul class="posision">
            <ul class="fancyNav" >
                <li id="home"><a href="index.jsp" class="homeIcon">Home</a></li>
               <li id="services"><a href="locales.jsp">Locales</a></li>
                <li id="about"><a href="horarios.jsp">Horarios </a></li>
                <li id="about"><a href="listS"> Servicios</a></li>
                <li id="about"><a href="listT">Trabajadores </a></li>
                <li id="about"><a href="primer">Usuario</a></li> 
             <li id="about"><a href="citas.jsp">Administrador</a></li> 
                 </ul>
</ul>
<br>
 <img  src="log.png" width="45%" height="120m" ><br>

 <h2 align="right"> TRABAJADORES COIFFURE</h2>
 
 <table class=tabla9>
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


</body>
</html>