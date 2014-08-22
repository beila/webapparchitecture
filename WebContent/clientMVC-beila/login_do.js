/**
 * Login Data Object
 */

var LoginDo = function(userId, userPasswd) {
    var id = userId;
    var passwd = userPasswd;
    
    this.getId = function(){
    	return id;
    };

    this.getPasswd = function(){
    	return passwd;
    };
};