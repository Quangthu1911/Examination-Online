package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;

import BEAN.BXH;
import BEAN.Exam;
import BEAN.Question;
import DB.DBConnection;

public class ExamDAO {
	Scanner sc=new Scanner(System.in);
	public static List<Exam> DisplayExamStudent(String userlogin) throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<Exam> list= new ArrayList<Exam>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("Select Exams.ExamID,ExamName,TimeStart,TimeEnd,TimeDoExam,Exams.UserLogin,CountQuestion,ScoreQuestion from Exams,Score where Exams.ExamID=Score.ExamID AND Score.UserLogin='"+userlogin+"'");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				Exam ex=new Exam();
				String ExamID=rSet.getString("ExamID");
				String ExamName=rSet.getString("ExamName");
				String TimeStart=rSet.getString("TimeStart");
				String TimeEnd=rSet.getString("TimeEnd");
				int TimeDoExam=rSet.getInt("TimeDoExam");
				String UserLogin=rSet.getString("UserLogin");
				int CountQuestion=rSet.getInt("CountQuestion");
				double ScoreQuestion=rSet.getDouble("ScoreQuestion");
				ex.setExamID(ExamID);
				ex.setExamName(ExamName);
				ex.setTimeStart(TimeStart);
				ex.setTimeEnd(TimeEnd);
				ex.setTimeDoExam(TimeDoExam);
				ex.setUserLogin(UserLogin);
				ex.setCountQuestion(CountQuestion);
				ex.setScoreQuestion(ScoreQuestion);
				list.add(ex);
			}
			
			
		}
		catch (SQLException e) {
		}
		return list;
		
	}
	public static List<Exam> DisplayExamStudentBXH() throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<Exam> list= new ArrayList<Exam>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("Select ExamName,UserLogin from Exams");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				Exam ex=new Exam();
				String ExamName=rSet.getString("ExamName");
				String UserLogin=rSet.getString("UserLogin");
				ex.setExamName(ExamName);
				ex.setUserLogin(UserLogin);
				list.add(ex);
			}
			
			
		}
		catch (SQLException e) {
		}
		return list;
		
	}
	public static List<BXH> DisplayBXH(String ExamName,String UserName) throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<BXH> list= new ArrayList<BXH>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("SELECT UserName,ScoreStudent from Score,Users,Exams where Score.UserLogin=Users.UserLogin AND Score.ExamID=Exams.ExamID AND Exams.ExamName='"+ExamName +"' AND Exams.UserLogin='"+UserName +"' ORDER BY ScoreStudent DESC");
			//ptmt.setString(1, ExamName);
			//ptmt.setString(2, UserName);
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				BXH ex=new BXH();
				String name=rSet.getString("UserName");
				Double diem=rSet.getDouble("ScoreStudent");
				ex.setUserName(name);
				ex.setDiem(diem);
				list.add(ex);
			}
		}
		catch (SQLException e) {
		}
		return list;
		
	}
	 public static boolean insertExam(Exam exam)
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "INSERT INTO Exams(ExamID,ExamName,TimeStart,TimeEnd,TimeDoExam,UserLogin,CountQuestion,ScoreQuestion) VALUES(?,?,?,?,?,?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, exam.getExamID());
	        	ptmt.setString(2,exam.getExamName());
	        	ptmt.setString(3, exam.getTimeStart());
	        	ptmt.setString(4, exam.getTimeEnd());
	        	ptmt.setInt(5, exam.getTimeDoExam());
	        	ptmt.setString(6,exam.getUserLogin());
	        	ptmt.setInt(7, exam.getCountQuestion());
	        	ptmt.setDouble(8, exam.getScoreQuestion());
	        	
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	Logger.getLogger(ExamDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	}
	public static boolean deleteExamStudent(String id)
	{
	    Connection conn=null;
		DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
        String sql = "EXEC pr_DeleteExamStudent ?";
        try {
        	PreparedStatement ptmt=conn.prepareStatement(sql);
        	ptmt.setString(1, id);
            return ptmt.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ExamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
	}
	public static boolean CompareDateTime(String thoiGianHetHan,String thoiGianHienTai)
	{
		//System.out.println(thoiGianHetHan+"  "+thoiGianHienTai);
		int ngay1=0,thang1=0,nam1=0,gio1=0,phut1=0,giay1=0;
		int kq1=0,kq2=0;
		int ngay2=0,thang2=0,nam2=0,gio2=0,phut2=0,giay2=0;
		try {
			Date date1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(thoiGianHetHan);
			Date date2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(thoiGianHienTai);
			ngay1=date1.getDate();
			thang1=date1.getMonth();
			nam1=date1.getYear();
			gio1=date1.getHours();
			phut1=date1.getMinutes();
			giay1=date1.getSeconds();
			
			ngay2=date2.getDate();
			thang2=date2.getMonth();
			nam2=date2.getYear();
			gio2=date2.getHours();
			phut2=date2.getMinutes();
			giay2=date2.getSeconds();
			kq1=gio1*3600 + phut1*60 + giay1;
			kq2=gio2*3600 + phut2*60 + giay2;
			
			
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		if ((nam1+1900) * 12 * 31 + (thang1+1) * 31 + ngay1 > (nam2+1900) * 12 * 31 +( thang2+1) * 31 + ngay2)
        {
            return false;
        }
		else if((nam1+1900) * 12 * 31 + (thang1+1) * 31 + ngay1 == (nam2+1900) * 12 * 31 +( thang2+1) * 31 + ngay2)
		{
			if(kq1>kq2)
			{
				return false;
			}
		}
        return true;
	}
	public static int getDateExam(String thoiGianHienTai)
	{
		try {
			Date date2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(thoiGianHienTai);
			return date2.getDate();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0; 
		
	}
	public static int getMonthExam(String thoiGianHienTai)
	{
		try {
			Date date2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(thoiGianHienTai);
			return date2.getMonth()+1;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0; 
		
	}
	public static String LayHanNopBai(String examid)
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String result = "";
		String sql="select dbo.fn_LayThoiGianHanCuoi(?)";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ptmt.setString(1, examid);
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
	public static String LayThoiGianLamBai(String examid)
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String result = "";
		String sql="select TimeDoExam from Exams where ExamID=?";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ptmt.setString(1, examid);
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
	public static int checkIDExamMax()
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String sql="SELECT dbo.fn_TimIDExamMax()";
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
