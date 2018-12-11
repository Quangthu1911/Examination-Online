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

import BEAN.Exam;
import BEAN.Question;
import DAO.ExamDAO;
import DAO.QuestionDAO;

@WebServlet("/home")
public class home extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public home() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Date date = new Date();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String thoiGianHienTai  = df.format(date);
		String thoiGianHetHan=ExamDAO.LayHanNopBai("1");
		request.setAttribute("bienCo", thoiGianHetHan);
		if(ExamDAO.CompareDateTime(thoiGianHetHan, thoiGianHienTai)==false)
		{
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("FormNopBai.jsp");
			requestDispatcher.forward(request,response);
		}
		else
		{
			//thông báo
			//không được làm nữa
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request,response);
		}
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
