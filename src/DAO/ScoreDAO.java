package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import BEAN.Conservation;
import BEAN.Score;
import DB.DBConnection;

public class ScoreDAO {
	public static boolean insertScoreStudent(Score score) throws SQLException
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "INSERT INTO Score(UserLogin,ExamID,ScoreStudent) VALUES(?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, score.getUserLogin());
	        	ptmt.setString(2, score.getExamID());
	        	ptmt.setDouble(3, score.getDiem());
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	throw ex;
	        }
	}
	public static boolean updateScoreStudent(double diem,String examid,String userlogin) {
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
	        String sql = "UPDATE Score SET ScoreStudent = ? WHERE ExamID = ? AND UserLogin=?;";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setDouble(1, diem);
	        	ptmt.setString(2, examid);
	        	ptmt.setString(3, userlogin);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	            Logger.getLogger(ScoreDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	    }
	public static boolean checkStudentExam(String examID)
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String sql="SELECT dbo.fn_KiemTraThiSinhDaLamBai(?)";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ptmt.setString(1, examID);
			ResultSet rs = ptmt.executeQuery();
			int result = 0;
			while(rs.next())
			{
				result = rs.getInt(1);
			}
            return result == 1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
