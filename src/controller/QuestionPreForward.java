package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Question;
import DAO.QuestionDAO;


@WebServlet("/QuestionPreForward")
public class QuestionPreForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public QuestionPreForward() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*try {
			QuestionNextForward.STT--;
			int STT=QuestionNextForward.STT;
			if(STT<=0)
			{
				STT=0;
				QuestionNextForward.STT=0;
			}
			List<Question> list= new ArrayList<Question>();
			list=QuestionDAO.DisplayQuestion("1");
			request.setAttribute("ContenQuestion",list.get(STT).getContentQuestion());
			request.setAttribute("AnswerA","A.  "+ list.get(STT).getAnswerA());
			request.setAttribute("AnswerB","B.  "+ list.get(STT).getAnswerB());
			request.setAttribute("AnswerC","C.  "+ list.get(STT).getAnswerC());
			request.setAttribute("AnswerD","D.  "+ list.get(STT).getAnswerD());
		}
		 catch (Exception ex) {
			 request.setAttribute("loi", ex.toString());
		 }*/
		RequestDispatcher rd = request.getRequestDispatcher("/do_exam.jsp");
		rd.forward(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
