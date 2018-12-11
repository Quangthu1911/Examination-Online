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

import BEAN.BXH;
import BEAN.Question;
import DAO.ExamDAO;
import DAO.QuestionDAO;


@WebServlet("/BXHForward")
public class BXHForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String examname="";
	public static String userlogin="";
	public static List<BXH> list;
    public BXHForward() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		examname=request.getParameter("SelectSub");
		userlogin=request.getParameter("selectNameTeacher");
		request.setAttribute("bienCo", examname+" "+userlogin);
		System.out.println("huhuhu: "+examname+"___"+userlogin);
		list= new ArrayList<BXH>();
		try {
			list=ExamDAO.DisplayBXH(examname,userlogin);
			if(list.size()<6)
			{
				for(int i=0;i<list.size();i++)
				{
					request.setAttribute("bxh"+i, list.get(i).getUserName());
					request.setAttribute("diem"+i, String.valueOf(list.get(i).getDiem()));
				}
			}
			else
			{
				for(int i=0;i<6;i++)
				{
					request.setAttribute("bxh"+i, list.get(i).getUserName());
					request.setAttribute("diem"+i, String.valueOf(list.get(i).getDiem()));
				}
			}
			
			
			//them cai la hien ngay tai cho do luon
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
		requestDispatcher.forward(request,response);
	}

}
