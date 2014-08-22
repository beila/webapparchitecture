var Controller = function() {
	this.loginSO = new LoginSO();
};

Controller.prototype.logoutClickHandler = function(event) {
	event.preventDefault();

	if(controller.loginSO.confirmLogout()) {
		location.href = 'login.html';
	}
};

var controller = new Controller();

function init() {
	
	if(!localStorage.getItem('login')) {
		location.href = 'login.html';
	}
	else {
		var id = localStorage.getItem('login');
		document.querySelector('#welcome').innerHTML = id + '님 환영합니다.';
		
		document.querySelector('#logout').addEventListener('click', controller.logoutClickHandler);
	}
}

window.addEventListener('load', init);