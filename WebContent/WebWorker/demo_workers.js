/*
	XMLHttpRequest	
	create other web workers
	
	applicationCache
	navigator
	location
	
	setTimeout method
	clearTimeout method
	setInterval method
	clearInterval method
	
	importScripts method
 */

var i = 1;

function messageHandler(event) {
	if(event.data === 'end') {
		this.close();
	}	
};

function timedCount() {
	this.postMessage(i++);
}

this.addEventListener('message', messageHandler);

setInterval(timedCount, 500);











