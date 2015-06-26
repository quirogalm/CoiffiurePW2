<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="unsa.com.*"%>
<%@ page import="java.util.List"%>
<% List<Trabajador> trabajos = (List<Trabajador>)request.getAttribute("trabajos");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
      <title>REGISTRAR TRBAJADOR</title>
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
 <img  src="log.png" width="45%" height="120m" ><br>
<br><br><br><br><br>
 <h2>INGRESE TRABAJADOR</h2>
 
 <ul class="posision2">
 <form action="saveT" method="get">

Trabajador :  
<input type="text" required pattern="[a-zA-Z]+(\s)*[a-zA-Z]*"  name="nombre" placeholder=Nombre>
<BR><BR>Especialidad:  
<input type="text" required pattern="[a-zA-Z]+(\s)*[a-zA-Z]*"  name="esp" placeholder=Especialidad>
<BR><BR>Edad  
<input type="num" required pattern="[2-6][0-9]" name="edad" placeholder=20-70>
<BR><BR>Correo  
<input type="email" required pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" name="correo" placeholder="ejemplo@ejemplo.com">
<br><br> <input type="reset" value="Limpiar"/><input type="submit" value="Guardar" >

</form>

 </ul>
 
 
</body>

</html>