package unsa.com;

import java.io.EOFException; 
import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;
@SuppressWarnings("serial")
public class Save extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
       
		String  nombre= req.getParameter("nombre");
		String  apellido= req.getParameter("apellido");

		String  sexo= req.getParameter("sexo");
		String  correo= req.getParameter("correo");
		

	    final PersistenceManager pm = PMF.get().getPersistenceManager();
	    final Persona p = new Persona (nombre,apellido,sexo,correo);
	    
	    try{
	    pm.makePersistent(p);
	    resp.getWriter().println("Se ha guradado correctamente");
	   resp.sendRedirect("/registrar.jsp");
	    }
        catch(Exception e){
        System.out.println(e);
        resp.getWriter().println("Hubo un Error");
       resp.sendRedirect("/index.jsp");
        }
       finally{
    	   pm.close();
       }
	    
	}
	
}
