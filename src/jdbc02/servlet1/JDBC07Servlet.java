package jdbc02.servlet1;

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
 * Servlet implementation class JDBC07Servlet
 */
@WebServlet("/jdbc02/s07")
public class JDBC07Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC07Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사전 작업
				ServletContext application = request.getServletContext();
				DataSource pool =(DataSource) application.getAttribute("dbpool");
				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;
				
//				String contactName = "";
//				String customerName ="";
//				String address = "";
				
				Customer bean = new Customer();
				
				//리퀘스트 분석/가공
				
				//비지니스 로직
				String sql = "SELECT CustomerName, ContactName, Address, City FROM Customers WHERE CustomerID = 1";
				try {
					// 1. connection 얻기
					con = pool.getConnection();
					// 2. statement 얻기
					stmt = con.createStatement();
					// 3. resultset 얻기
					rs = stmt.executeQuery(sql);
								
					if (rs.next()) {
//						customerName = rs.getString(1);
//						contactName = rs.getString(2);
//						address = rs.getString(3);
						
						int i =1;
						
						bean.setCustomerName(rs.getString(i++));
						bean.setContactName(rs.getString(i++));
						bean.setAddress(rs.getString(i++));
						bean.setCity(rs.getString(i++));
					}
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					if(rs !=null) {
						try {
							rs.close();
						}catch(SQLException e){
							e.printStackTrace();
						}
					}
					if(stmt !=null) {
						try {
							stmt.close();
						}catch(SQLException e) {
							e.printStackTrace();
						}
					}
					if(con !=null) {
						try {
							con.close();
						}catch(SQLException e) {
							e.printStackTrace();
						}
					}
				}
				//에드 어트리뷰트
//				request.setAttribute("contactName", contactName);
//				request.setAttribute("customerName", customerName);
//				request.setAttribute("address", address);
				
				request.setAttribute("customer", bean);
				
				
				//포워드,리디렉션
				String path ="/WEB-INF/view/jdbc02/v07.jsp";
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
