var Controller = function() {
	this.loginSO = new LoginSO();
};

Controller.prototype.loginHandler = function(event) {
	event.preventDefault();
	
	var id = document.querySelector('#id').value;
	var passwd = document.querySelector('#passwd').value;
	var loginDO = new LoginDO(id, passwd);
	
	if(controller.loginSO.confirmLogin(loginDO)) {
		location.href = 'index.html';
	}
	else {
		location.href = 'login.html';
	}
};

var controller = new Controller();

var init = function() {

	if(localStorage.getItem('login')) {
		location.href = 'index.html';
	}
	else {
		document.querySelector('#myForm').addEventListener('submit', controller.loginHandler);
	}
};

window.addEventListener('load', init);







