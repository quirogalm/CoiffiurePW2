package unsa.com;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Eliminar2 extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
			
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Query q = pm.newQuery(Servicios.class); 
		

			q.setOrdering("key descending");
			q.setRange(0, 50);
			try{
			@SuppressWarnings("unchecked")
			List<Servicios> servicio = (List<Servicios>) q.execute();
			req.setAttribute("servicio", servicio);
		
	
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/eliminarS.jsp");
			rd.forward(req, resp);
			}catch(Exception e){
				System.out.println(e);
			}finally{
				q.closeAll();
				pm.close();
			}
		}
}