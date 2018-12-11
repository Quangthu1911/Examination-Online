package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ExamDAO;
import DAO.UserLoginDAO;


@WebServlet("/DeleteExamStudentForward")
public class DeleteExamStudentForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public DeleteExamStudentForward() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean flag;
		String id=request.getParameter("idExam");
		//request.setAttribute("bien",id);
		 flag=ExamDAO.deleteExamStudent(id);
		 if(flag==false)
		 {
			 request.setAttribute("thongbao", "<script>alert('Bạn đã xóa thành công !!!');</script>");
		 }
		 else
		 {
			 request.setAttribute("thongbao", "<script>alert('Bạn chưa xóa được !!!');</script>");
		 }
		 RequestDispatcher requestDispatcher = request.getRequestDispatcher("Student.jsp");
		 requestDispatcher.forward(request,response); 
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
