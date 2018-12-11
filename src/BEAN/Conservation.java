package BEAN;

public class Conservation {
	private String ConserID;
	private String NameStudent;
	private String NameTeacher;
	private String NameAdmin;
	private String ContentStudent;
	private String ContentTeacher;
	private String ContentAdmin;
	private String DateTime;
	private String ExamID;
	public Conservation(String conserID, String nameStudent, String nameTeacher, String nameAdmin,
			String contentStudent, String contentTeacher, String contentAdmin, String dateTime, String examID) {
		super();
		ConserID = conserID;
		NameStudent = nameStudent;
		NameTeacher = nameTeacher;
		NameAdmin = nameAdmin;
		ContentStudent = contentStudent;
		ContentTeacher = contentTeacher;
		ContentAdmin = contentAdmin;
		DateTime = dateTime;
		ExamID = examID;
	}
	public Conservation(String idMaxMax, String nameStudent,
			String contentStudent, String contentTeacher, String dateTime, String examID) {
		super();
		ConserID = idMaxMax;
		NameStudent = nameStudent;
		ContentStudent = contentStudent;
		ContentTeacher = contentTeacher;
		DateTime = dateTime;
		ExamID = examID;
	}
	public Conservation()
	{}
	public String getConserID() {
		return ConserID;
	}
	public void setConserID(String conserID) {
		ConserID = conserID;
	}
	public String getNameStudent() {
		return NameStudent;
	}
	public void setNameStudent(String nameStudent) {
		NameStudent = nameStudent;
	}
	public String getNameTeacher() {
		return NameTeacher;
	}
	public void setNameTeacher(String nameTeacher) {
		NameTeacher = nameTeacher;
	}
	public String getNameAdmin() {
		return NameAdmin;
	}
	public void setNameAdmin(String nameAdmin) {
		NameAdmin = nameAdmin;
	}
	public String getContentStudent() {
		return ContentStudent;
	}
	public void setContentStudent(String contentStudent) {
		ContentStudent = contentStudent;
	}
	public String getContentTeacher() {
		return ContentTeacher;
	}
	public void setContentTeacher(String contentTeacher) {
		ContentTeacher = contentTeacher;
	}
	public String getContentAdmin() {
		return ContentAdmin;
	}
	public void setContentAdmin(String contentAdmin) {
		ContentAdmin = contentAdmin;
	}
	public String getDateTime() {
		return DateTime;
	}
	public void setDateTime(String dateTime) {
		DateTime = dateTime;
	}
	public String getExamID() {
		return ExamID;
	}
	public void setExamID(String examID) {
		ExamID = examID;
	}
	
}
