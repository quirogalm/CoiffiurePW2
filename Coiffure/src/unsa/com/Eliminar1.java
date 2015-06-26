package unsa.com;

import java.io.IOException;  
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Eliminar1 extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Trabajador.class); 
		

		q.setOrdering("id descending");
		q.setRange(0, 50);
		try{
			@SuppressWarnings("unchecked")
			List<Trabajador> trabajos = (List<Trabajador>) q.execute();
			req.setAttribute("trabajos",trabajos);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/eliminarT.jsp");
			rd.forward(req, resp);
		}catch(Exception e){
			System.out.println(e);
		}finally{
			q.closeAll();
			pm.close();
		}
	}
}