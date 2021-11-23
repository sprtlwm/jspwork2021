package jdbc03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customer;

/**
 * Servlet implementation class JDBC12Servlet
 */
@WebServlet("/jdbc03/s12")
public class JDBC12Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC12Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//0.
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		Customer cus = new Customer();

	//2.
		String id = request.getParameter("customerID");
		
	//3.
		String sql = "SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country"
					 + "FROM Customers WHERE CustomerID =1" + id;
		
		try(Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				){
			if(rs.next()) {
				
				int i =1;
				cus.setCustomerID(rs.getInt(i++));
				cus.setCustomerName(rs.getString(i++));
				cus.setContactName(rs.getString(i++));
				cus.setAddress(rs.getString(i++));
				cus.setCity(rs.getString(i++));
				cus.setPostalCode(rs.getString(i++));
				cus.setCountry(rs.getString(i++));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	//4.
		request.setAttribute("customer", cus);
	
	//5.
		String path ="/WEB-INF/view/jdbc03/v12.jsp";
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
