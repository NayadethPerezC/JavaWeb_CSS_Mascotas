package servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class Counter
 */
public class Counter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Counter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession miSesion = request.getSession();
		
		// 2. Recuperamos de la sesión la cantidad de veces que se ha accedido a la página
		String veces = (String) miSesion.getAttribute("veces");

		// 3. Le sumamos 1 al contador de veces que hemos visitado la página
		if (veces == null) {
			veces = "1";
		}
		else {
			veces = (Integer.parseInt(veces) + 1) + "";
		}
		// 4. Guardamos la nueva sesión
		miSesion.setAttribute("veces", veces);
		System.out.println(veces);
		
		// 5. Cargamos la vista
		RequestDispatcher vista = request.getRequestDispatcher("WEB-INF/Counter.jsp");
		vista.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			HttpSession miSesion = request.getSession();
			
			miSesion.setAttribute("veces", "0");
			
			response.sendRedirect("/Mascotas/Counter");
		
	}

}
