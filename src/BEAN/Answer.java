package BEAN;

public class Answer {
	private String UserLogin;
	private String QuestionID;
	private String AnswerStudent;
	public Answer(String userLogin, String questionID, String answerStudent) {
		super();
		UserLogin = userLogin;
		QuestionID = questionID;
		AnswerStudent = answerStudent;
	}
	public Answer() {}
	public String getUserLogin() {
		return UserLogin;
	}
	public void setUserLogin(String userLogin) {
		UserLogin = userLogin;
	}
	public String getQuestionID() {
		return QuestionID;
	}
	public void setQuestionID(String questionID) {
		QuestionID = questionID;
	}
	public String getAnswerStudent() {
		return AnswerStudent;
	}
	public void setAnswerStudent(String answerStudent) {
		AnswerStudent = answerStudent;
	}
	

}
