package unsa.com;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Eliminar extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		String delete = req.getParameter("delete");
		int  i=0;
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Persona.class);

	
		List<Persona> user = (List<Persona>) q.execute(delete);

		out.println("<!DOCTYPE html>"
				+"<html><center><body bgcolor=#D8F781>"
				+"<head>"
				+"<link rel='stylesheet' href='estilo.css'>"
			+"<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>"
			+"<br>"
			
			+ "<br>"
				+"</head>");
		
		
		for (Persona x : user) {
			if (x.getCorreo().equals(delete)) {
				out.println("<h2>El usuario con " + x.getCorreo()
						+ " como correo fue elminado satisfactoriamente</h2>");
				pm.deletePersistent(x);
				i++;
				
			}
		}
		if (i == 0) {
			out.println("<h2>El correo no esta registrado."
					+ " Porfavor ingrese uno correcto</h2>");
			out.println("<meta http-equiv='Refresh' content='2;url=index.html'>");
		}else{
			out.println("<meta http-equiv='Refresh' content='2;url=index.html'>");
		}
			
		out.println("</center></body></html>"); 	
	}
}