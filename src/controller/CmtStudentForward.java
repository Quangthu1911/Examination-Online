package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Conservation;
import BEAN.UserLogin;
import DAO.ConserStudentDAO;
import DAO.UserLoginDAO;


@WebServlet("/CmtStudentForward")
public class CmtStudentForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public CmtStudentForward() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = ConserStudentDAO.checkIDConserMax()+1;
	    String idMaxMax=String.valueOf(id);
	    
	    HttpSession session = request.getSession();
		Object objSession = session.getAttribute("UserLogin");
		String UserLogin = null;
		if (objSession != null) {
			UserLogin = (String)objSession;
		}
		
		String valueNull="";
		
		String ContentCmt=request.getParameter("contentCmt");
	    Date date = new Date();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString  = df.format(date);
		
		//String ExamID = request.getParameter("choiGian");
		HttpSession session1 = request.getSession();
		Object objSession1 = session1.getAttribute("idExamConser");
		String ExamID = null;
		if (objSession1 != null) {
			ExamID = (String)objSession1;
		}
		
	    //Conservation conser=new Conservation(idMaxMax,UserLogin,"ha",ContentCmt,valueNull,dateString,ExamID);
	    Conservation conser=new Conservation(idMaxMax,UserLogin,ContentCmt,valueNull,dateString,ExamID);
	    
	    try {
			boolean test=ConserStudentDAO.insertConserStudent(conser);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	RequestDispatcher requestDispatcher = request.getRequestDispatcher("ConservationStudent.jsp");
	requestDispatcher.forward(request,response);
	}

}
