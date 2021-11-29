package jdbc08.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import jdbc08.bean.Bean11;

public class MyTable11Dao {

	public boolean insert(Connection con, Bean11 bean) {
		String sql = "INSERT INTO mytable11 (name, age, birth)"
				+ "VALUE (?, ?, ?)";

		try (PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, bean.getName());
			pstmt.setInt(2, bean.getAge());
			pstmt.setDate(3, Date.valueOf(bean.getBirth()));
			

			return pstmt.executeUpdate() == 1;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
//------------------------------------------------------------------------------
	public List<Bean11> getList(Connection con) {
		List<Bean11> list = new ArrayList<>();
		String sql = "SELECT name, age, birth FROM mytable11";

		try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {

			while (rs.next()) {
				Bean11 bean = new Bean11();

				bean.setName(rs.getString("name"));
				bean.setAge(rs.getInt("age"));
				bean.setBirth(rs.getDate("birth").toLocalDate());
							
				list.add(bean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
