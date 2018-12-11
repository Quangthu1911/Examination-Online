package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserLoginDAO;


@WebServlet("/codePassForward")
public class codePassForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public codePassForward() {
        super();
    }
    public static String macode;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		macode=request.getParameter("codepass");
		if(UserLoginDAO.checCodeUnique(ForgetPassword.userlogin, macode)==false)
		{
			request.setAttribute("thongbao2", "<script>alert('Mã code chưa chính xác !!!');</script>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("codePass.jsp");
			requestDispatcher.forward(request,response);
		}
		else
		{
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("newPassword.jsp");
			requestDispatcher.forward(request,response);
		}
	}

}
