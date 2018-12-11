package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Question;
import BEAN.strSave;
import DAO.ExamDAO;
import DAO.QuestionDAO;
import DAO.ScoreDAO;

@WebServlet("/QuestionNextForward")
public class QuestionNextForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public QuestionNextForward() {
        super();
    }
    public static int STT;
    public static String ExamID;
    public static String TimeDoExam;
    int i=0;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		ExamID = request.getParameter("ExamID");
		TimeDoExam=ExamDAO.LayThoiGianLamBai(ExamID);
		HttpSession session1 = request.getSession();
		 session1.setAttribute("minutes", TimeDoExam);
		Date date = new Date();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String thoiGianHienTai  = df.format(date);
		String thoiGianHetHan=ExamDAO.LayHanNopBai(ExamID);
		
		HttpSession session = request.getSession();
		Object objSession = session.getAttribute("UserLogin");
		String UserLogin = null;
		if (objSession != null) {
			UserLogin = (String)objSession;
		}
		if(ExamDAO.CompareDateTime(thoiGianHetHan, thoiGianHienTai)==false)
		{
			i++;
			if(i==1)
			{
				ExamID = request.getParameter("ExamID");
			}
			try {
				List<Question> list= new ArrayList<Question>();
				list=QuestionDAO.DisplayQuestion(ExamID);
				String stt = request.getParameter("stt");
				
				if (stt == null || stt.trim().isEmpty()) 
					stt = "0";
				else
				{
					STT = Integer.parseInt(stt);
					STT++;
					if(STT>=list.size()-1)
				    {
						STT=list.size()-1;
						stt=String.valueOf(STT);
					}
				}
				request.setAttribute("stt", STT);
				request.setAttribute("ContenQuestion",list.get(STT).getContentQuestion());
				request.setAttribute("AnswerA","A.  "+ list.get(STT).getAnswerA());
				request.setAttribute("AnswerB","B.  "+ list.get(STT).getAnswerB());
				request.setAttribute("AnswerC","C.  "+ list.get(STT).getAnswerC());
				request.setAttribute("AnswerD","D.  "+ list.get(STT).getAnswerD());	
				request.setAttribute("AnswerE","E.  "+ list.get(STT).getAnswerE());	
				request.setAttribute("AnswerF","F.  "+ list.get(STT).getAnswerF());	
				
			}
			 catch (Exception ex) {
				 request.setAttribute("loi", ex.toString());
			 }
			RequestDispatcher rd = request.getRequestDispatcher("/do_exam.jsp");
			rd.forward(request,response);
		}
		else
		{
			ScoreDAO.updateScoreStudent(0, ExamID, UserLogin);
			request.setAttribute("thongbao", "<script>alert('Bạn đã hết thời hạn làm bài !!!');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("Student.jsp");
			rd.forward(request,response);
			
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
