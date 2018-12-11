package controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.UserLogin;
import DAO.UserLoginDAO;


@WebServlet("/RegisterForward")
public class RegisterForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RegisterForward() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (request.getCharacterEncoding()==null)
		{
			request.setCharacterEncoding("UTF-8");
		}
		//response.getWriter().print("co vo nha\n");
		boolean flag;
		 String name=request.getParameter("UserLogin");
		 //response.getWriter().print(name);
		 flag=UserLoginDAO.checkUserLoginRegister(name);
		 if(flag)
		 {
			 response.getWriter().print("Tên đăng nhập trùng !!!");
		 }
		 else
		 {
			 int per=-1;
			 String UserLogin=request.getParameter("UserLogin");
			 String Password=request.getParameter("Password");
			 String Certi=request.getParameter("Certi");
			 String Email=request.getParameter("Email");
			 String PhoneNumber=request.getParameter("Num");
			 String UserName=request.getParameter("UserName");
			 String Address=request.getParameter("Address");
			 Random rd=new Random();
			 int VitualCodeInt = rd.nextInt(1000);
			 String VitualCode = String.valueOf(VitualCodeInt);
			 String rdlg_ts = request.getParameter("rdlg_ts");
			 if (rdlg_ts != null) {
				 per=1;
			 }
			 else
			 {
				 per=2;
			 }
			 UserLogin user=new UserLogin(UserLogin,Password,Email,Certi,UserName,Address,VitualCode,per,PhoneNumber);
			 try {
				 boolean test = UserLoginDAO.insertUserLogin(user);
				 if(test)
				 {
					 request.setAttribute("thongbao", "<script>alert('Bạn đăng ký tài khoản thành công !!!');</script>");
				 }
				 
			 } catch (Exception ex) {
				 response.getWriter().print("Lỗi đăng ký !!!");
				 //request.setAttribute("loi", ex.toString());
			 }
			 
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
				requestDispatcher.forward(request,response);
		 }
	}

}
