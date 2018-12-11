package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

import BEAN.Conservation;
import BEAN.UserLogin;
import DB.DBConnection;
import controller.ConserStudenrForward;

public class ConserStudentDAO {
	Scanner sc=new Scanner(System.in);
	public static int checkIDConserMax()
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String sql="SELECT dbo.fn_TimIDMax()";
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
	public static boolean insertConserStudent(Conservation conser) throws SQLException
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "INSERT INTO Conservation(ConserID,NameStudent,NameTeacher,ContentStudent,ContentTeacher,DateTime,ExamID) VALUES(?,?,?,?,?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, conser.getConserID());
	        	ptmt.setString(2, conser.getNameStudent());
	        	ptmt.setString(3, conser.getNameTeacher());
	        	ptmt.setString(4, conser.getContentStudent());
	        	ptmt.setString(5, conser.getContentTeacher());
	        	ptmt.setString(6, conser.getDateTime());
	        	ptmt.setString(7, conser.getExamID());
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	throw ex;
	        }
	}
	public static List<Conservation> DisplayConservationStudent() throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<Conservation> list= new ArrayList<Conservation>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select ConserID,NameStudent,NameTeacher,ContentStudent,ContentTeacher,DateTime,ExamID from Conservation where ExamID='"+ConserStudenrForward.examIDConser+"'");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				Conservation cs=new Conservation();
				String ConserID=rSet.getString("ConserID");
				String NameStudent=rSet.getString("NameStudent");
				String NameTeacher=rSet.getString("NameTeacher");
				String ContentStudent=rSet.getString("ContentStudent");
				String ContentTeacher=rSet.getString("ContentTeacher");
				String DateTime=rSet.getString("DateTime");
				String ExamID=rSet.getString("ExamID");
				cs.setConserID(ConserID);
				cs.setNameStudent(NameStudent);
				cs.setNameTeacher(NameTeacher);
				cs.setContentStudent(ContentStudent);
				cs.setContentTeacher(ContentTeacher);
				cs.setDateTime(DateTime);
				cs.setExamID(ExamID);
				list.add(cs);
			}
			
			
		}
		catch (SQLException e) {
		}
		return list;
		
	}
	public static boolean updateConser(String content,String datetime,String id)
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "UPDATE Conservation SET ContentStudent=N?,DateTime=? WHERE ConserID=?";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, content);
	        	ptmt.setString(2, datetime);
	        	ptmt.setString(3, id);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	Logger.getLogger(ExamDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	}
	public static boolean DeleteConser(String id)
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "DELETE Conservation where ConserID=?";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	
	        	ptmt.setString(1, id);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	Logger.getLogger(ExamDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	}

}
