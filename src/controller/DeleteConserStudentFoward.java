package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ConserStudentDAO;

/**
 * Servlet implementation class DeleteConserStudentFoward
 */
@WebServlet("/DeleteConserStudentFoward")
public class DeleteConserStudentFoward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public DeleteConserStudentFoward() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idconser=request.getParameter("idconser");
		ConserStudentDAO.DeleteConser(idconser);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("ConservationStudent.jsp");
		requestDispatcher.forward(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
