package BEAN;

public class Question {
	private String QuestionID;
	private String ExamID;
	private String ContentQuestion;
	private String AnswerA;
	private String AnswerB;
	private String AnswerC;
	private String AnswerD;
	private String AnswerE;
	private String AnswerF;
	private String AnswerTrue;
	private int type;
	public Question(String questionID, String examID, String contentQuestion, String answerA, String answerB,
			String answerC, String answerD, String answerE, String answerF, String answerTrue, int type) {
		super();
		QuestionID = questionID;
		ExamID = examID;
		ContentQuestion = contentQuestion;
		AnswerA = answerA;
		AnswerB = answerB;
		AnswerC = answerC;
		AnswerD = answerD;
		AnswerE = answerE;
		AnswerF = answerF;
		AnswerTrue = answerTrue;
		this.type = type;
	}
	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getQuestionID() {
		return QuestionID;
	}
	public void setQuestionID(String questionID) {
		QuestionID = questionID;
	}
	public String getExamID() {
		return ExamID;
	}
	public void setExamID(String examID) {
		ExamID = examID;
	}
	public String getContentQuestion() {
		return ContentQuestion;
	}
	public void setContentQuestion(String contentQuestion) {
		ContentQuestion = contentQuestion;
	}
	public String getAnswerA() {
		return AnswerA;
	}
	public void setAnswerA(String answerA) {
		AnswerA = answerA;
	}
	public String getAnswerB() {
		return AnswerB;
	}
	public void setAnswerB(String answerB) {
		AnswerB = answerB;
	}
	public String getAnswerC() {
		return AnswerC;
	}
	public void setAnswerC(String answerC) {
		AnswerC = answerC;
	}
	public String getAnswerD() {
		return AnswerD;
	}
	public void setAnswerD(String answerD) {
		AnswerD = answerD;
	}
	public String getAnswerE() {
		return AnswerE;
	}
	public void setAnswerE(String answerE) {
		AnswerE = answerE;
	}
	public String getAnswerF() {
		return AnswerF;
	}
	public void setAnswerF(String answerF) {
		AnswerF = answerF;
	}
	public String getAnswerTrue() {
		return AnswerTrue;
	}
	public void setAnswerTrue(String answerTrue) {
		AnswerTrue = answerTrue;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
}
