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


@WebServlet("/SettingAnounceFoward")
public class SettingAnounceFoward extends HttpServlet {
    public SettingAnounceFoward() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String flag=request.getParameter("flag");
		String idNews=request.getParameter("idNews");
		String titleMainNews=request.getParameter("titleMain");
		String titleNews=request.getParameter("title");
		String ContentNews=request.getParameter("contentNews");
		if(flag.equals("edit"))
		{
			boolean test= AnnounceDAO.updateAnnounce(titleMainNews,titleNews,ContentNews,idNews);	
		}
		else if(flag.equals("add"))
		{
			int id=AnnounceDAO.checkIDNews()+1;
			announce an=new announce(String.valueOf(id),titleMainNews,titleNews,ContentNews);
			boolean test= AnnounceDAO.insertAnnounce(an);
		}
		request.setAttribute("idNews", "");
		request.setAttribute("titleMain", "");
		request.setAttribute("title", "");
		request.setAttribute("contentNews", "");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("QLThongBao.jsp");
		requestDispatcher.forward(request,response);
		
	}

}
