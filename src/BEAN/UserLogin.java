package BEAN;

public class UserLogin {
	private String UserLogin;
	private String Password;
	private String Email;
	private String Certi;
	private String UserName;
	private String Address;
	private String VitualCode;
	private int permission;
	private String PhoneNumber;
	public UserLogin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserLogin(String userLogin, String password, String email, String certi, String userName, String address,
			String vitualCode, int permission,String PhoneNumber) {
		super();
		UserLogin = userLogin;
		Password = password;
		Email = email;
		Certi = certi;
		UserName = userName;
		Address = address;
		VitualCode = vitualCode;
		this.permission = permission;
		this.PhoneNumber=PhoneNumber;
	}
	
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getUserLogin() {
		return UserLogin;
	}
	public void setUserLogin(String userLogin) {
		UserLogin = userLogin;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getCerti() {
		return Certi;
	}
	public void setCerti(String certi) {
		Certi = certi;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getVitualCode() {
		return VitualCode;
	}
	public void setVitualCode(String vitualCode) {
		VitualCode = vitualCode;
	}
	public int getPermission() {
		return permission;
	}
	public void setPermission(int permission) {
		this.permission = permission;
	}
	
}
