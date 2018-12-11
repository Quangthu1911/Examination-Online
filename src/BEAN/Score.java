package BEAN;

public class Score {
	private String UserLogin;
	private String ExamID;
	private float diem;
	public Score(String userLogin, String examID, float diem) {
		super();
		UserLogin = userLogin;
		ExamID = examID;
		this.diem = diem;
	}
	public Score() {}
	public String getUserLogin() {
		return UserLogin;
	}
	public void setUserLogin(String userLogin) {
		UserLogin = userLogin;
	}
	public String getExamID() {
		return ExamID;
	}
	public void setExamID(String examID) {
		ExamID = examID;
	}
	public float getDiem() {
		return diem;
	}
	public void setDiem(float diem) {
		this.diem = diem;
	}
	

}
