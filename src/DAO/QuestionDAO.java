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

import BEAN.Exam;
import BEAN.Question;
import DB.DBConnection;

public class QuestionDAO {
	/*Scanner sc=new Scanner(System.in);
	 public static boolean insertbill(Question question)
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "INSERT INTO Exams(ExamID,ExamName,TimeStart,TimeEnd,TimeDoExam,UserLogin,CountQuestion,ScoreQuestion) VALUES(?,?,?,?,?,?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, question.getExamID());
	        	ptmt.setString(2,question.getExamName());
	        	ptmt.setString(3, question.getTimeStart());
	        	ptmt.setString(4, question.getTimeEnd());
	        	ptmt.setInt(5, question.getTimeDoExam());
	        	ptmt.setString(6,question.getUserLogin());
	        	ptmt.setInt(7, question.getCountQuestion());
	        	ptmt.setDouble(8, question.getScoreQuestion());
	        	
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	Logger.getLogger(QuestionDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	}*/
	public static List<Question> DisplayQuestion(String ExamID) throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		
		List<Question> list= new ArrayList<Question>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select * from Question where ExamID='"+ExamID+"'");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				Question qs=new Question();
				String QuestionID=rSet.getString("QuestionID");
				String ContentQuestion=rSet.getString("ContentQuestion");
				String AnswerA=rSet.getString("AnswerA");
				String AnswerB=rSet.getString("AnswerB");
				String AnswerC=rSet.getString("AnswerC");
				String AnswerD=rSet.getString("AnswerD");
				String AnswerE=rSet.getString("AnswerE");
				String AnswerF=rSet.getString("AnswerF");
				String AnswerTrue=rSet.getString("AnswerTrue");
				int Type=rSet.getInt("Type");
				qs.setQuestionID(QuestionID);
				qs.setExamID(ExamID);
				qs.setContentQuestion(ContentQuestion);
				qs.setAnswerA(AnswerA);
				qs.setAnswerB(AnswerB);
				qs.setAnswerC(AnswerC);
				qs.setAnswerD(AnswerD);
				qs.setAnswerE(AnswerE);
				qs.setAnswerF(AnswerF);
				qs.setAnswerTrue(AnswerTrue);
				qs.setType(Type);
				
				list.add(qs);
			}
			
			//ptmt.close();
			//rSet.close();
		}
		catch (Exception e) {
			throw e;
		}
		return list;
		
	}
	public static boolean checkResultStudent(String resultStudent, String idQuestion)
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String sql="SELECT  dbo.fn_KiemTraDapAn(?,?)";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ptmt.setString(1, resultStudent);
			ptmt.setString(2, idQuestion);
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
	 public static boolean insertQuestion(Question question)
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "INSERT INTO Question VALUES(?,?,?,?,?,?,?,?,?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, question.getQuestionID());
	        	ptmt.setString(2, question.getExamID());
	        	ptmt.setString(3,question.getContentQuestion());
	        	ptmt.setString(4, question.getAnswerA());
	        	ptmt.setString(5, question.getAnswerB());
	        	ptmt.setString(6, question.getAnswerC());
	        	ptmt.setString(7, question.getAnswerD());
	        	ptmt.setString(8, question.getAnswerE());
	        	ptmt.setString(9, question.getAnswerF());
	        	ptmt.setString(10, question.getAnswerTrue());
	        	ptmt.setInt(11, question.getType());
	        	
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	Logger.getLogger(ExamDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	}
	 public static int checkIDQuestionMax()
		{
			Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
			String sql="SELECT dbo.fn_TimIDQuestionMax()";
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
