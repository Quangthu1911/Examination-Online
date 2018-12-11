package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Question;
import BEAN.ReadFileExcel;
import DAO.QuestionDAO;


@WebServlet("/LoadExelForward")
public class LoadExelForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public LoadExelForward() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String file=request.getParameter("namefile");
		List<Question> listQ=new ArrayList<>();
		listQ=ReadFileExcel.readfile(file);
		for(int i=0;i<listQ.size();i++)
		{
			//System.out.println(listQ.get(i).getContentQuestion());
			//boolean insert=QuestionDAO.insertQuestion(listQ.get(i));
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
