package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Answer;
import BEAN.strSave;
import DAO.AnswerStudentDAO;


@WebServlet("/reviewExamStudent")
public class reviewExamStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String identi="";
	public static List<strSave> listtemp;
    public reviewExamStudent() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Answer> listAnswerStudent=new ArrayList<Answer>();
		listtemp=new ArrayList<strSave>();
		String x="";
		try {
			listAnswerStudent=AnswerStudentDAO.DisplayAnswerStudent(QuestionNextForward.ExamID);
			for(int i=0;i<listAnswerStudent.size();i++)
			{
				strSave y=new strSave(listAnswerStudent.get(i).getAnswerStudent());
				listtemp.add(y);
				x+=listtemp.get(i).getValue()+" ";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("bien", x);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("reviewExam.jsp");
		requestDispatcher.forward(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
