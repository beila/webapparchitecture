<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>
	<title>Insert title here</title>
	<meta charset='UTF-8'>
	<script src="login_do.js"></script>
	<script src="login_dao.js"></script>
	<script src="login_so.js"></script>
	<script src="controller.js"></script>
	<script>
		window.onload = function() {
			document.querySelector('#loginForm').addEventListener('submit', function(event) {
				event.preventDefault();
				controller(event);
			});
		};
	</script>
</head>
<body>

	<form id='loginForm' action='controller.jsp' method='POST'>
	<fieldset>
	<legend>login</legend>
		<label for='id'>id</label>
		<input type='text' name='id' id='id' />
		<label for='passwd'>password</label>
		<input type='password' name='passwd' id='passwd' />
		<input type='hidden' name='command' value='login' />
		<input type='submit' value='login' />
	</fieldset>
	</form>
	<output id='debugOutput'></output>

</body>
</html>