var LoginDAO = function() {
	var id = localStorage.getItem('id');
	var passwd = localStorage.getItem('passwd');

	this.getId = function() {
		return id;
	};
	
	this.getPasswd = function() {
		return passwd;
	};
};

LoginDAO.prototype.checkLogin = function(loginDO) {
	var result = false;
	
	if(loginDO.getId() == this.getId() && loginDO.getPasswd() == this.getPasswd()) {
		result = true;
		localStorage.setItem('login', loginDO.getId());
	}
	
	return result;
};

LoginDAO.prototype.logout = function() {
		localStorage.removeItem('login');
		
		return true;
};