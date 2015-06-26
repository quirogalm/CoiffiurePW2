<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >

<head>
      <title>ELIMINAR</title>
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
 
 
 <br><br><br><br><br><h2>Buscar Registro</h2>
 <ul class="posision2">

 Ingrese Nombre :<br><br>
<input type="texto" name="delete"><br><br>
<input type="submit" value="Buscar">

<form action = 'elimina' method='get'><br>
 Ingrese Correo:<br><br>
<input type="texto" name="delete"><br><br>
<input type="submit" value="Eliminar"  >
</form>
 </ul>

 
<table >
 <caption><h3>REGISTROS ENCONTRADOS</h3></caption>
<tr> <th>Nombres</th> <th>Apellidos</th> <th>Rol</th><th>Sexo</th>
<th>Correo</th>
</tr>
<tr> <td>Hello</td> <td>----</td> <td>-----</td>
<td>-----</td><td>-----</td>
</tr>
<tr> <td>World</td> <td>-----</td> <td>-----</td>
<td>-----</td><td>-----</td>

</table>

</body>
</html>