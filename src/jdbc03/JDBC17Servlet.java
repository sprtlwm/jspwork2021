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

import jdbc02.bean.Supplier;

/**
 * Servlet implementation class JDBC17Servlet
 */
@WebServlet("/jdbc3/s17")
public class JDBC17Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC17Servlet() {
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
		List<Supplier> list = new ArrayList<>();
		List<String> countryList = new ArrayList<>();

		// 2. request 분석/가공
		String country = request.getParameter("country");
		
		// 3. business logic
		
		//3.1
		String sql2 ="SELECT DISTINCT Country FROM Suppliers ORDER BY Country";
		
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
		String sql = "SELECT SupplierID, SupplierName, ContactName, Address, City,"
				+ " PostalCode, Country, Phone  "
				+ " FROM Suppliers WHERE Country = ?";

		try (Connection con = ds.getConnection(); PreparedStatement stmt = con.prepareStatement(sql);) {

			stmt.setString(1, country);
			try (ResultSet rs = stmt.executeQuery()) {

				while (rs.next()) {
					Supplier sup = new Supplier();

					int i = 1;
					sup.setSupplierID(rs.getInt(i++));
					sup.setSupplierName(rs.getString(i++));
					sup.setContactName(rs.getString(i++));
					sup.setAddress(rs.getString(i++));
					sup.setCity(rs.getString(i++));
					sup.setPostalCode(rs.getString(i++));
					sup.setCountry(rs.getString(i++));
					sup.setPhone(rs.getString(i++));

					list.add(sup);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 4. add attribute
		request.setAttribute("suppliers", list);
		request.setAttribute("countryList", countryList);

		// 5. forward
		String path = "/WEB-INF/view/jdbc03/v17.jsp";
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
