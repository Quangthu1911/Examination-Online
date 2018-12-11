package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ConserStudenrForward")
public class ConserStudenrForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static String examIDConser;
    public ConserStudenrForward() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		examIDConser=request.getParameter("ExamIDConser");
		HttpSession session = request.getSession();
		 session.setAttribute("idExamConser", examIDConser);
		if(examIDConser!=null)
		{
			request.setAttribute("nameStudent",LoginForward.name);
			RequestDispatcher rd = request.getRequestDispatcher("/ConservationStudent.jsp");
			rd.forward(request,response);
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
