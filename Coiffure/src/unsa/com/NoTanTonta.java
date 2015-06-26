package unsa.com;

import java.io.IOException;  
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class NoTanTonta extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
		HttpSession misesion= req.getSession(true);

		req.setAttribute("nombre", "");
		req.setAttribute("apellido", "");
		req.setAttribute("correo", "");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/datos.jsp");
		rd.forward(req, resp);
		
		misesion.setAttribute("nombres", "");
		misesion.setAttribute("apellidos", "");
		misesion.setAttribute("correos", "");

	}
}
