package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Answer;
import BEAN.Exam;
import BEAN.Question;
import DAO.AnswerStudentDAO;
import DAO.ExamDAO;
import DAO.QuestionDAO;
import DAO.ScoreDAO;


@WebServlet("/CheckResultStudentForward")
public class CheckResultStudentForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public CheckResultStudentForward() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			double diem=0;
			double diemMoiCau=0;
			List<Question> list=QuestionDAO.DisplayQuestion(QuestionNextForward.ExamID);
			List<Exam> listExam=ExamDAO.DisplayExamStudent(LoginForward.name);
			for(int i=0;i<listExam.size();i++)
			{
					if(listExam.get(i).getExamID().equals(QuestionNextForward.ExamID))
					{
						diemMoiCau=listExam.get(i).getScoreQuestion();
						break;
						
					}
				
			}
			
			HttpSession session = request.getSession();
			Object objSession = session.getAttribute("UserLogin");
			String UserLogin = null;
			if (objSession != null) {
				UserLogin = (String)objSession;
			}
			
				for(int i=0;i<list.size();i++)
				{
					String valueResult=request.getParameter(list.get(i).getQuestionID());
					String result="";
					if(list.get(i).getType()==1)
					{
					    if(valueResult.equals("A"))
						{
					    	if(list.get(i).getAnswerTrue().equals("A"))
					    	{
					    		diem+=diemMoiCau;
					    	}
					    	result="A";
						}
						else if(valueResult.equals("B"))
						{
							if(list.get(i).getAnswerTrue().equals("B"))
							{
								diem+=diemMoiCau;
							}
							result="B";
						}
						else if(valueResult.equals("C"))
						{
							if(list.get(i).getAnswerTrue().equals("C"))
							{
								diem+=diemMoiCau;
							}
							result="C";
						}
						else if(valueResult.equals("D"))
						{
							if(list.get(i).getAnswerTrue().equals("D"))
							{
								diem+=diemMoiCau;	
							}
							result="D";
							
						}
						else if(valueResult.equals("E"))
						{
							if(list.get(i).getAnswerTrue().equals("E"))
							{
								diem+=diemMoiCau;
							}
							result="E";
						}
						else if(valueResult.equals("F"))
						{
							if(list.get(i).getAnswerTrue().equals("F"))
							{
								diem+=diemMoiCau;
							}
							result="F";
						}
					   
					}
					else
					{
						String valueResultA=request.getParameter(list.get(i).getQuestionID()+"A");
						if(valueResultA==null)
						{
							valueResultA="";
						}
						String valueResultB=request.getParameter(list.get(i).getQuestionID()+"B");
						if(valueResultB==null)
						{
							valueResultB="";
						}
						String valueResultC=request.getParameter(list.get(i).getQuestionID()+"C");
						if(valueResultC==null)
						{
							valueResultC="";
						}
						String valueResultD=request.getParameter(list.get(i).getQuestionID()+"D");
						if(valueResultD==null)
						{
							valueResultD="";
						}
						String valueResultE=request.getParameter(list.get(i).getQuestionID()+"E");
						if(valueResultE==null)
						{
							valueResultE="";
						}
						String valueResultF=request.getParameter(list.get(i).getQuestionID()+"F");
						if(valueResultF==null)
						{
							valueResultF="";
						}
						int flag=0;
						result="";
						String DATrue=list.get(i).getAnswerTrue(); //ACD	
						if(valueResultA.equals("A"))
						{
							for(int j=0;j<DATrue.length();j++)
							{
								if(DATrue.charAt(j)=='A')
								{
									flag++;
									break;
								}		
							}
							result+="A";
						}
						if(valueResultB.equals("B"))
						{
							for(int j=0;j<DATrue.length();j++)
							{
								if(DATrue.charAt(j)=='B')
								{
									
									flag++;
									break;
								}
							}
							result+="B";
						}
						if(valueResultC.equals("C"))
						{
							for(int j=0;j<DATrue.length();j++)
							{
								if(DATrue.charAt(j)=='C')
								{
									
									flag++;
									break;
								}
							}
							result+="C";
						}
						if(valueResultD.equals("D"))
						{
							for(int j=0;j<DATrue.length();j++)
							{
								if(DATrue.charAt(j)=='D')
								{
									
									flag++;
									break;
								}
							}
							result+="D";
						}
						if(valueResultE.equals("E"))
						{
							for(int j=0;j<DATrue.length();j++)
							{
								if(DATrue.charAt(j)=='E')
								{
									
									flag++;
									break;
								}
							}
							result+="E";
						}
						if(valueResultF.equals("F"))
						{
							for(int j=0;j<DATrue.length();j++)
							{
								if(DATrue.charAt(j)=='F')
								{
									
									flag++;
									break;
								}
							}
							result+="F";
						}
						if(flag==DATrue.length())
						{
							diem+=diemMoiCau;
						}
					}
					try {
						Answer answer=new Answer(UserLogin,list.get(i).getQuestionID(),result);
						boolean answerStudent=AnswerStudentDAO.insertAnswerStudent(answer);
						if(answerStudent==true)
						{
							System.out.println("vô rồi nha");
						}
					}catch(Exception e)
					{
						e.printStackTrace();
					}
			   }
			double diemThi=	(double) Math.floor(diem * 1000) / 1000;
			request.setAttribute("diem",diemThi );
			boolean ScoreStudent=ScoreDAO.updateScoreStudent(diemThi, QuestionNextForward.ExamID, UserLogin);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("FormNopBai.jsp");
			requestDispatcher.forward(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
