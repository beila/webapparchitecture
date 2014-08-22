var LoginDO = function(userid, userpasswd) {
	var id = userid;
	var passwd = userpasswd;
	
	this.getId = function() {
		return id;
	};
	
	this.getPasswd = function() {
		return passwd;
	};
};