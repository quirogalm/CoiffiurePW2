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

import unsa.com.PMF;
import unsa.com.Persona;


	@SuppressWarnings("serial")
	public class ListT extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Query q = pm.newQuery(Trabajador.class); 
			

			q.setOrdering("id descending");
			q.setRange(0, 50);
			try{
				@SuppressWarnings("unchecked")
				List<Trabajador> trabajos = (List<Trabajador>) q.execute();
				req.setAttribute("trabajos",trabajos);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/listT.jsp");
				rd.forward(req, resp);
			}catch(Exception e){
				System.out.println(e);
			}finally{
				q.closeAll();
				pm.close();
			}
		}
}