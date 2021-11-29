package jdbc08;

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
 * Servlet implementation class JDBC32Servlet
 */
@WebServlet("/jdbc08/s32")
public class JDBC32Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC32Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		String sql = "SELECT col1, col2, col3, col4, col5, col6, col7 FROM mytable10";
		
		try(Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				){
			
			while (rs.next()) {
//				int col1 = rs.getInt("col1");
				Integer col1 = rs.getInt("col1");
//				double col2 = rs.getDouble("col2");
				Double col2 = rs.getDouble("col2");
//				double col3 = rs.getDouble("col3");
				Double col3 = rs.getDouble("col3");
				String col4 = rs.getString("col4");
				String col5 = rs.getString("col5");
				java.sql.Date col6 = rs.getDate("col6");
				//LocalDate
				java.sql.Timestamp col7 = rs.getTimestamp("col7");
				//LocalDateTime
				
			System.out.println(col1 + ", " + col2 + ", " + col3 + ", " + col4 + ", " + col5 + ", " + col6 + ", " + col7);
			}
			
		}catch(Exception e) {
				e.printStackTrace();
			}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
