package modelForServerMVC;

public class LoginDao {

	static final String ID = "longlee";
	static final String PASSWD = "6789";
	
	public LoginDao() {
		
	}
	
	public boolean checkLogin(LoginDo loginDo) {
		return ID.equals(loginDo.getId()) && PASSWD.equals(loginDo.getPasswd());
	}
}
