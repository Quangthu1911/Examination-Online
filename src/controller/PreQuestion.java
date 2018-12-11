package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Question;
import DAO.QuestionDAO;

@WebServlet("/PreQuestion")
public class PreQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PreQuestion() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		List<Question> list= new ArrayList<Question>();
		try {
			list=QuestionDAO.DisplayQuestion(NextQuestion.ExamID);
			
			int tt = NextQuestion.tt;
			NextQuestion.tt--;
			tt--;
			if(NextQuestion.tt<=0)
			{
				NextQuestion.tt=0;
			}
			String html = "<div id='Question1'>\r\n" + 
					"						<p>" + list.get(tt).getContentQuestion() + "</p> \r\n" + 
					"						 <div class='result'>\r\n" + 
					"						 	<span>A.  " +list.get(tt).getAnswerA()  + "</span><br>\r\n" + 
					"							<span>B.  "+ list.get(tt).getAnswerB()+"</span><br>\r\n" + 
					"							<span>C.  "+ list.get(tt).getAnswerC()+"</span><br>\r\n" + 
					"							<span>D.  "+list.get(tt).getAnswerD()+"</span><br>\r\n" + 
					"							<span>E.  "+list.get(tt).getAnswerE()+"</span><br>\r\n" + 
					"							<span>F.  "+list.get(tt).getAnswerF()+"</span><br>\r\n" +
					"						 </div>\r\n" + 
					"				    </div>";
			response.getWriter().print(html);
		} catch (SQLException e) {
			response.getWriter().print(e.toString());
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
