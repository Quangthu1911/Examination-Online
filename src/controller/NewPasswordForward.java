package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserLoginDAO;


@WebServlet("/NewPasswordForward")
public class NewPasswordForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public NewPasswordForward() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String newpass=request.getParameter("newpass");
		String renewpass=request.getParameter("renewpass");
		request.setAttribute("loi", newpass+"A "+"A"+renewpass+"A");
		if(newpass==""||renewpass=="")
		{
			request.setAttribute("thongbao", "<script>alert('Bạn đăng nhập chưa đầy đủ thông tin !!!');</script>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("FormNopBai.jsp");
			requestDispatcher.forward(request,response);
		}
		else if(newpass.equals(renewpass)==false)
		{
			request.setAttribute("thongbao", "<script>alert('Bạn mật khẩu nhập lại không đúng !!!');</script>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request,response);
		}
		else if(newpass.length()<9)
		{
			request.setAttribute("thongbao", "<script>alert('Mật khẩu phải lớn hơn 8 kí tự !!!');</script>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request,response);
		}
		else
		{
			boolean update=UserLoginDAO.updateUsers( ForgetPassword.userlogin, newpass);
			if(update)
			{
				request.setAttribute("thongbao", "<script>alert('Bạn đổi mật khẩu thành công !!!');</script>");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
				requestDispatcher.forward(request,response);
			}
			else
			{
				request.setAttribute("thongbao", "<script>alert('Bạn chưa đổi được mật khẩu !!!');</script>");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
				requestDispatcher.forward(request,response);
			}
			
		}
		
	}

}
