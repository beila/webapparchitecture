/**
 * Login Service Object
 */

var loginSo = function(inputLoginDao){
	var loginDao = inputLoginDao;
	
	this.confirmLogin = function(loginDo) {
		return loginDao.checkLogin(loginDo);
	};
};