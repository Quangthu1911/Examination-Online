package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.SendMail;
import DAO.UserLoginDAO;


@WebServlet("/ForgetPassword")
public class ForgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ForgetPassword() {
        super();
    }
    public static String userlogin;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		userlogin=request.getParameter("loginUser");
		String emaillogin=request.getParameter("EmailLogin");
		String check=UserLoginDAO.checkUserLoginUnique(userlogin,emaillogin);
		if(check=="")
		{
			request.setAttribute("thongbao", "<script>alert('Bạn nhập không đúng !!!');</script>");
		}
		else
		{
			boolean mail=SendMail.send(emaillogin, "Send to code for new password", check);
			if(mail==false)
			{
				request.setAttribute("thongbao", "<script>alert('Đã xảy ra lỗi! không thể gửi code !!!');</script>");
			}
			else
			{
				request.setAttribute("thongbao", "<script>alert('Mã code đã gửi về email bạn !!!');</script>");
			}
			
		}
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("codePass.jsp");
		requestDispatcher.forward(request,response);
	}

}
