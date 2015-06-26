<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <title>COIFFURE</title>
         <link rel="stylesheet" href="estilo.css" />		
         <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster" />
         <link rel="icon" type="image/png" href="icon.ico"> 
         </meta>

<style type="text/css">
    /*<![CDATA[*/
<!--
div.ic_myCarousel {
    margin: 2px auto 0 auto;
    clear:right;
}
.infiniteCarousel {
    box-shadow: 0px 0px 0px ;

}
.ic_left_nav, .ic_right_nav {
    display: none;
}
-->
    /*]]>*/
</style>
   <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
  <script src="http://notoyontoy.site40.net/Js/jquery.infinitecarousel3.min.js"></script>
  <script type="text/javascript" src="http://notoyontoy.site40.net/Js/easing.js"></script>
  <script>
     var a = jQuery.noConflict();
        a(document).ready(function() {
        a('#carousel').infiniteCarousel({
           imagePath: '',
           transitionSpeed:1200,
           displayTime: 1000,
           thumbnailType: 'none',
           customClass: 'myCarousel',
           easeLeft: 'linear',
           easeRight:'linear',
           inView: 1,
           advance: 1,
           autoPilot: true,
           displayProgressRing: false,
           showControls: false,
           prevNextInternal: false
});
 });
</script>
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
<center>
 <br><br>
<ul id="carousel">
  <li><img src="ima1.jpg"  width="78%" height="350m"/></li>
  <li><img src="ima2.png" width="78%" height="320m" /></li>
  <li><img src="ima3.jpg"  width="78%" height="250m"/></li>
</center>
</ul>
<br>


<div class="box">
            <div class="left">
                <div class="content">
                    En Coiffure estudiamos todos los detalles de tu dia para que sientas que eres tu misma y para que un estilo de peinado te haga especial.
<br> <br>Con un equipo que esta en constante busqueda de nuevas tecnicas y tendencias.
              <br> <br> CONTACTANOS CON NUESTRO E-MAIL
              <br> proyectopw2@gmail.com 
              
                </div>
            </div>
            <div class="right">
                <div class="content">
               Para ofrecerte el mejor asesoramiento contamos con especialistas recomendados. <br><br>
Nuestro objetivo al cliente es enseñarte a potenciar tus cualidades para conseguir un 'look' único.
                </div>
            </div>
        </div>

	

<br><br>
<div id="licencia">Derechos Reservados &copy; 2015 COIFFURE S.A. <br>Para mas informacion contactanos en proyectopw2@gmail.com   </div>




</body>
</html>