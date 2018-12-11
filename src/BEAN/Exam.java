package BEAN;

public class Exam {
	private String ExamID;
	private String ExamName;
	private String TimeStart;
	private String TimeEnd;
	private int TimeDoExam;
	private String UserLogin;
	private int CountQuestion;
	private double ScoreQuestion;
	public Exam()
	{
	}
	public Exam(String examID,String ExamName,String TimeStart,String TimeEnd,int TimeDoExam,String UserLogin,int CountQuestion,double ScoreQuestion)
	{
		this.ExamID=examID;
		this.ExamName=ExamName;
		this.TimeStart=TimeStart;
		this.TimeEnd=TimeEnd;
		this.TimeDoExam=TimeDoExam;
		this.UserLogin=UserLogin;
		this.CountQuestion=CountQuestion;
		this.ScoreQuestion=ScoreQuestion;
	}
	public String getExamID() {
		return ExamID;
	}
	public void setExamID(String examID) {
		ExamID = examID;
	}
	public String getExamName() {
		return ExamName;
	}
	public void setExamName(String examName) {
		ExamName = examName;
	}
	public String getTimeStart() {
		return TimeStart;
	}
	public void setTimeStart(String timeStart) {
		TimeStart = timeStart;
	}
	public String getTimeEnd() {
		return TimeEnd;
	}
	public void setTimeEnd(String timeEnd) {
		TimeEnd = timeEnd;
	}
	public int getTimeDoExam() {
		return TimeDoExam;
	}
	public void setTimeDoExam(int timeDoExam) {
		TimeDoExam = timeDoExam;
	}
	public String getUserLogin() {
		return UserLogin;
	}
	public void setUserLogin(String userLogin) {
		UserLogin = userLogin;
	}
	public int getCountQuestion() {
		return CountQuestion;
	}
	public void setCountQuestion(int countQuestion) {
		CountQuestion = countQuestion;
	}
	public double getScoreQuestion() {
		return ScoreQuestion;
	}
	public void setScoreQuestion(double scoreQuestion) {
		ScoreQuestion = scoreQuestion;
	}
	

}
