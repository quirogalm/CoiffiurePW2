package unsa.com;

import java.io.IOException;  
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class AdmServicio extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/servicio.jsp");
		rd.forward(req, resp);
		
		

	}
}