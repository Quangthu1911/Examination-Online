package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.announce;
import DAO.AnnounceDAO;


@WebServlet("/EditAnounceFoward")
public class EditAnounceFoward extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public EditAnounceFoward() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String temp=request.getParameter("temp");
		String idNews=request.getParameter("idNews");
		String titleMainNews=request.getParameter("titleMainNews");
		String titleNews=request.getParameter("titleNews");
		String ContentNews=request.getParameter("contentNews");
		if(temp.equals("edit"))
		{
			request.setAttribute("flag", "edit"); 
			request.setAttribute("idNews", idNews); 
			request.setAttribute("titleMain", titleMainNews);  
			request.setAttribute("title", titleNews);
			request.setAttribute("contentNews", ContentNews);
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("EditAnounce.jsp");
			requestDispatcher.forward(request,response);
		}
		else if(temp.equals("delete"))
		{
			boolean test=AnnounceDAO.DeleteAnnounce(idNews);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("QLThongBao.jsp");
			requestDispatcher.forward(request,response);
		}
		else if(temp.equals("add"))
		{
			request.setAttribute("flag", "add"); 
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("EditAnounce.jsp");
			requestDispatcher.forward(request,response);
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
