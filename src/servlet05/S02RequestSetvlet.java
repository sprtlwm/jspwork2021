package servlet05;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S02RequestSetvlet
 */
@WebServlet("/servlet05/s02")
public class S02RequestSetvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S02RequestSetvlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String country = request.getParameter("country");
		country = country ==null ? "" : country;
		
		List<String> list = new  ArrayList<>();
		if(country.equals("미국")) {
			list.add("newyork");
			list.add("chicago");
			}else if(country.equals("한국")) {
			list.add("seoul");
			list.add("jeju");
		}
		
		
		request.setAttribute("cities", list);
		request.setAttribute("country", country);
		
		String path ="/WEB-INF/view/servlet05/s02.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
