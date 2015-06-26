package unsa.com;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class EliminarC extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		String delete = req.getParameter("delete");
		int  i=0;
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Cita.class);

	
		List<Cita> user = (List<Cita>) q.execute(delete);


		
		for (Cita x : user) {
			if (x.getCorreo().equals(delete)) {
				   resp.sendRedirect("/citas.jsp");
				pm.deletePersistent(x);
				i++;
			}
		}
		if (i == 0) {
			
			out.println("<meta http-equiv='Refresh' content='2;url=index.jsp'>");
		}else{
			out.println("<meta http-equiv='Refresh' content='2;url=index.jsp'>");
		}
			
		out.println("</center></body></html>");
	}
}