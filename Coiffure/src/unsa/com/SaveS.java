package unsa.com;

import java.io.EOFException; 
import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;
@SuppressWarnings("serial")
public class SaveS extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
       
		String  servicio= req.getParameter("servicio");
		double  precio= Double.parseDouble(req.getParameter("precio"));

		
		

	    final PersistenceManager pm = PMF.get().getPersistenceManager();
	    final Servicios p = new Servicios (servicio, precio) ;
	    
	    try{
	    pm.makePersistent(p);
	    resp.getWriter().println("Se ha guradado correctamente");
	   resp.sendRedirect("/servicio.jsp");
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
