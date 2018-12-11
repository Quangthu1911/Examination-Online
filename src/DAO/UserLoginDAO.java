package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import BEAN.UserLogin;
import DB.DBConnection;

public class UserLoginDAO {
	 public static boolean insertUserLogin(UserLogin users) throws SQLException
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "INSERT INTO Users(UserLogin,Password,Email,Certi,UserName,Address,VitualCode,Permission,PhoneNumber) VALUES(?,?,?,?,?,?,?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, users.getUserLogin());
	        	ptmt.setString(2,users.getPassword());
	        	ptmt.setString(3,users.getEmail());
	        	ptmt.setString(4, users.getCerti());
	        	ptmt.setString(5, users.getUserName());
	        	ptmt.setString(6,users.getAddress());
	        	ptmt.setString(7, users.getVitualCode());
	        	ptmt.setInt(8, users.getPermission());
	        	ptmt.setString(9, users.getPhoneNumber());
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	throw ex;
	        }
	}
	 //chac khong can ham nay dau
	public static boolean checkUserLoginRegister(String UserLogin)
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String sql="select dbo.fn_KiemTraTenDKI(?)";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ptmt.setString(1, UserLogin);
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
	public static boolean checkLogin(String UserLogin, String Password,int quyen)
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String sql="select dbo.fn_KiemTraLogin(?,?,?)";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ptmt.setString(1, UserLogin);
			ptmt.setString(2, Password);
			ptmt.setInt(3, quyen);
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
	public static boolean checCodeUnique(String UserLogin, String code)
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String sql="select dbo.fn_kiemTraMaCode(?,?)";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ptmt.setString(1, UserLogin);
			ptmt.setString(2, code);
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
	public static String checkUserLoginUnique(String UserLogin,String email)
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String result = "";
		String sql="SELECT dbo.fn_kiemTraTenDangNhapCoDungKhong(?,?)";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ptmt.setString(1, UserLogin);
			ptmt.setString(2, email);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next())
			{
				result = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	public static boolean updateUsers(String UserLogin,String pass) {
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
	        String sql = "update Users set Password=? where UserLogin=?";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, pass);
	        	ptmt.setString(2, UserLogin);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	            Logger.getLogger(ScoreDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	    }
}
