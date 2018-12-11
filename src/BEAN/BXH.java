package BEAN;

public class BXH {
	private String UserName;
	private double diem;
	public BXH(String userName, double diem) {
		super();
		UserName = userName;
		this.diem = diem;
	}
	public BXH()
	{
		
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public double getDiem() {
		return diem;
	}
	public void setDiem(double diem) {
		this.diem = diem;
	}

}
