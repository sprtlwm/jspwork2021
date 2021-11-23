package jdbc03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customer;


/**
 * Servlet implementation class JDBC18Servlet
 */
@WebServlet("/jdbc03/s18")
public class JDBC18Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC18Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전작업
				ServletContext application = request.getServletContext();
				DataSource ds = (DataSource) application.getAttribute("dbpool");
				List<Customer> list = new ArrayList<>();
				List<String> countryList = new ArrayList<>();

				// 2. request 분석/가공
				String country = request.getParameter("country");
				
				// 3. business logic
				
				//3.1
				String sql2 ="SELECT DISTINCT Country FROM Customers ORDER BY Country";
				
				try(Connection con = ds.getConnection();
						Statement stmt = con.createStatement();
						ResultSet rs = stmt.executeQuery(sql2);){
					while (rs.next()) {
						countryList.add(rs.getString(1));
					}
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				//3.2
				String sql = "SELECT CustomerID, CUstomerName, ContactName, Address, City,"
						+ " PostalCode, Country "
						+ " FROM Customers WHERE Country = ?";

				try (Connection con = ds.getConnection(); PreparedStatement stmt = con.prepareStatement(sql);) {

					stmt.setString(1, country);
					try (ResultSet rs = stmt.executeQuery()) {

						while (rs.next()) {
							Customer cus = new Customer();

							int i = 1;
							cus.setCustomerID(rs.getInt(i++));
							cus.setCustomerName(rs.getString(i++));
							cus.setContactName(rs.getString(i++));
							cus.setAddress(rs.getString(i++));
						    cus.setCity(rs.getString(i++));
							cus.setPostalCode(rs.getString(i++));
							cus.setCountry(rs.getString(i++));

							list.add(cus);
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}

				// 4. add attribute
				request.setAttribute("customers", list);
				request.setAttribute("countryList", countryList);

				// 5. forward
				String path = "/WEB-INF/view/jdbc03/v18.jsp";
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
