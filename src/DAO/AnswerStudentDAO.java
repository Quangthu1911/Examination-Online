package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Answer;
import BEAN.Conservation;
import BEAN.Score;
import DB.DBConnection;
import controller.ConserStudenrForward;

public class AnswerStudentDAO {
	public static boolean insertAnswerStudent(Answer answer) throws SQLException
	 {
		    Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "INSERT INTO Answerstu(UserLogin,QuestionID,AnswerStudent) VALUES(?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, answer.getUserLogin());
	        	ptmt.setString(2, answer.getQuestionID());
	        	ptmt.setString(3, answer.getAnswerStudent());
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	        	throw ex;
	        }
	}
	public static List<Answer> DisplayAnswerStudent(String examId) throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<Answer> list= new ArrayList<Answer>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select UserLogin,Answerstu.QuestionID,AnswerStudent from Answerstu,Question where Answerstu.QuestionID=Question.QuestionID AND Question.ExamID='"+examId+"'");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				Answer ans=new Answer();
				String UserLogin=rSet.getString("UserLogin");
				String QuestionID=rSet.getString("QuestionID");
				String AnswerStudent=rSet.getString("AnswerStudent");
				ans.setUserLogin(UserLogin);
				ans.setQuestionID(QuestionID);
				ans.setAnswerStudent(AnswerStudent);
				list.add(ans);
			}
		}
		catch (SQLException e) {
		}
		return list;
		
	}
	public static String ResultOfStudent(String idQuestion)
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		String sql="SELECT dbo.fn_timDapAnThiSinhLam(?)";
		String result = "";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ptmt.setString(1, idQuestion);
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

}
