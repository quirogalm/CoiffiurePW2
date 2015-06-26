package unsa.com;

import java.io.IOException; 
import java.util.Date;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Session extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		resp.setContentType("text/plain");
		String a, b, c,d;
		
		HttpSession misesion= req.getSession();
	
		a=req.getParameter("nombre");
		b=req.getParameter("apellidos");
		c=req.getParameter("correo");
		d=req.getParameter("sex");

		 final PersistenceManager pm = PMF.get().getPersistenceManager();
		    final Cita p = new Cita (a,b,d,c) ;
		    
		    try{
		    pm.makePersistent(p);
		    resp.getWriter().println("Se ha guradado correctamente");
		    resp.sendRedirect("/primer");
		    }
	        catch(Exception e){
	        System.out.println(e);
	        resp.getWriter().println("Hubo un Error");
	       
	       resp.sendRedirect("/index.jsp");
	        }
	       finally{
	    	   pm.close();
	       }
		 //String corte = req.getParameter("corte");
		//String desc = req.getParameter("correo");

	   
	
	
	}
}

