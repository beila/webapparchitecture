package modelForServerMVC;

public class LoginSo {

	private LoginDao loginDao;
	
	public LoginSo() {
		loginDao = new LoginDao();
	}
	
	public boolean confirmLogin(LoginDo loginDo) {
		return null != loginDo.getId() && null != loginDo.getPasswd() && loginDao.checkLogin(loginDo);
	}
}
