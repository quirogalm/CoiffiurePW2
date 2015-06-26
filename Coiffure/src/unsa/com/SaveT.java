package unsa.com;

import java.io.EOFException; 
import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;
@SuppressWarnings("serial")
public class SaveT extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
       
		String nombre = req.getParameter("nombre");
		String esp = req.getParameter("esp");
		int  edad= Integer.parseInt(req.getParameter("edad"));
		String correo = req.getParameter("correo");
		
		

	    final PersistenceManager pm = PMF.get().getPersistenceManager();
	    final Trabajador p = new Trabajador (nombre,esp,edad,correo) ;
	    
	    try{
	    pm.makePersistent(p);
	    resp.getWriter().println("Se ha guradado correctamente");
	   resp.sendRedirect("/trabajador.jsp");
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