package DAO;

import java.sql.*;
import java.util.*;
import BEAN.QuestionType;

public class QuestionTypeDAO {

	public static List<QuestionType> DisplayQuestionType(int start, int count, Connection conn) {

		List<QuestionType> list = new ArrayList<QuestionType>();

		String sql = "select * from questiontypes limit " + (start - 1) + ", " + count + "";

		try {

			PreparedStatement ptmt = conn.prepareCall(sql);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {

				QuestionType qst = new QuestionType();

				qst.setQuestiontypeid(rs.getInt("questiontypeid"));
				qst.setQuestiontypename(rs.getString("questiontypename"));

				list.add(qst);

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}

	public static List<QuestionType> DisplayQuestionType_2(Connection conn) {

		List<QuestionType> list = new ArrayList<QuestionType>();

		String sql = "select * from questiontypes";

		try {

			PreparedStatement ptmt = conn.prepareCall(sql);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				QuestionType qst = new QuestionType();

				qst.setQuestiontypeid(rs.getInt("questiontypeid"));
				qst.setQuestiontypename(rs.getString("questiontypename"));

				list.add(qst);

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}

	public static boolean DeleteQuestionType(int QuestionTypeid, Connection conn) {

		boolean t = false;

		String sql = "Delete From questiontypes Where questiontypeid =?";

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, QuestionTypeid);
			stmt.executeUpdate();
			t = true;
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}

	public static int CountRow(Connection conn) {

		int count = 0;

		String sql = "select count(*) from questiontypes";

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

	public static boolean InsertQuestionType(List<QuestionType> qt, Connection conn) {

		String sql = "insert into users(questiontypeid, questiontypename) value(?,?)";
		String n= "select max(questiontypeid) from questiontypes";
		PreparedStatement ptmt;

		try {
			ptmt = conn.prepareStatement(n);
			ResultSet rs = ptmt.executeQuery();
			int i = rs.getInt(1);

			ptmt = conn.prepareStatement(sql);

			int j = 0;
			while (j < qt.size()) {
				ptmt.setInt(1,++i);
				ptmt.setString(2, qt.get(j).getQuestiontypename());
				if (ptmt.executeUpdate() == 0) {
					return false;
				}
				j++;
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return true;
	}

}
