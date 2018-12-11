package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import BEAN.Exam;
import BEAN.announce;
import DB.DBConnection;

public class AnnounceDAO {
	public static List<announce> DisplayAnnounce() throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<announce> list= new ArrayList<announce>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select *from News");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				announce ex=new announce();
				String IDNews=rSet.getString("IDNews");
				String TitleMainNews=rSet.getString("TitleMainNews");
				String TitleNews=rSet.getString("TitleNews");
				String ContentNews=rSet.getString("ContentNews");
				ex.setIdNews(IDNews);
				ex.setTitleMainNews(TitleMainNews);
				ex.setTitleNews(TitleNews);
				ex.setContentNews(ContentNews);
				list.add(ex);
			}
		}
		catch (SQLException e) {
		}
		return list;
		
	}
	public static boolean insertAnnounce(announce an)
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "INSERT INTO News VALUES(?,?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, an.getIdNews());
	        	ptmt.setString(2, an.getTitleMainNews());
	        	ptmt.setString(3, an.getTitleNews());
	        	ptmt.setString(4, an.getContentNews());
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	Logger.getLogger(ExamDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	}
	public static boolean updateAnnounce(String titleMain,String title,String content,String id)
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "UPDATE News SET TitleMainNews=?,TitleNews=?,ContentNews=? WHERE IDNews=?";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, titleMain);
	        	ptmt.setString(2, title);
	        	ptmt.setString(3, content);
	        	ptmt.setString(4, id);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	Logger.getLogger(ExamDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	}
	public static boolean DeleteAnnounce(String id)
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "DELETE News where News.IDNews=?";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	
	        	ptmt.setString(1, id);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	Logger.getLogger(ExamDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	}
	public static int checkIDNews()
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String sql="select dbo.fn_TimIDNewsMax()";
		int result = 0;
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next())
			{
				result = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
