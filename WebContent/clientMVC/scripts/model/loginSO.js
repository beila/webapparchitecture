var LoginSO = function() {
	this.loginDAO = new LoginDAO();
};
	
LoginSO.prototype.confirmLogin = function(loginDO) {
	var result = false;
	
	if(loginDO.getId() != null && loginDO.getPasswd() != null) {
		result = this.loginDAO.checkLogin(loginDO);
	}
	
	return result;
};

LoginSO.prototype.confirmLogout = function() {
	var result = false;
	
	if(this.loginDAO.logout()) {
		result = true;
	}
	
	return result;
};