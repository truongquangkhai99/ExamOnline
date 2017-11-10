package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Result;

public class ResultDAO {

	// Hàm lấy dữ liệu user để show lên bảng
	public static List<Result> DisplayResult(int start, int count, Connection conn) {

		List<Result> list = new ArrayList<Result>();

		String sql = "select resulttestid, resulttest.userid, username, fullname, point, testid" + " from users, resulttest "
				+ "where users.userid=resulttest.userid limit "+ (start - 1) + ", " + count + "" ;

		try {

			PreparedStatement ptmt = conn.prepareCall(sql);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {

				Result rt = new Result();

				rt.setResulttestid(rs.getInt("resulttestid"));
				rt.setUserid(rs.getInt("userid"));
				rt.setFullname(rs.getString("fullname"));
				rt.setUsername(rs.getString("username"));
				rt.setPoint(rs.getInt("point"));
				rt.setTestid(rs.getInt("testid"));
				
				list.add(rt);
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	public static int CountRow(Connection conn) {

		int count = 0;

		String sql = "select count(*) from resulttest";

		PreparedStatement ptmt;
		try {

			ptmt = conn.prepareStatement(sql);

			ResultSet rs = ptmt.executeQuery();

			rs.next();

			count = rs.getInt(1);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return count;

	}

}
