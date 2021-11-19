package jdbc01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBC01Servlet
 */
@WebServlet("/jdbc01/s01")
public class JDBC01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC01Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("jdbc s01 일함");
		ServletContext application = request.getServletContext();
		
		String sql = "SELECT CustomerName FROM Customers WHERE CustomerID = 1";
		
		DataSource pool = (DataSource) application.getAttribute("dbpool");
		try(Connection con = pool.getConnection();
			Statement stmt = con.createStatement();){
			ResultSet rs = stmt.executeQuery(sql); 
			if(rs.next()) {
				String name = rs.getString(1);
				System.out.println(name);
				
				request.setAttribute("customerName", name);
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	//forward
		String view ="/WEB-INF/view/jdbc01/v01.jsp";
		request.getRequestDispatcher(view).forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
