/**
 * Login Data Access Object
 */

var LoginDao = function() {
	this.checkLogin = function(loginDo) {
		return "longlee" == loginDo.getId() && "6789" == loginDo.getPasswd();
	};
};