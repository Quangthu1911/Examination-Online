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


@WebServlet("/NextQuestion")
public class NextQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static String ExamID;
    public static int tt=0;
    public static List<Question> list;
    public NextQuestion() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		ExamID = request.getParameter("ExamID");
		
		list= new ArrayList<Question>();
		try {
			list=QuestionDAO.DisplayQuestion(ExamID);
		
			
			tt = Integer.parseInt(request.getParameter("stt"));
			tt++;
			if(tt>=list.size()-1)
			{
				tt=list.size()-1;
			}
			request.setAttribute("stt", tt);
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
		
		doGet(request, response);
	}

}
