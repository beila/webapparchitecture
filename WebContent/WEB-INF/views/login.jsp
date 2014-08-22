<%@ page contentType="text/html; charset=UTF-8" %>

<%
	if (null != session.getAttribute("login")) {
		%><jsp:forward page="/WEB-INF/views/index.jsp" /><%
	}
%>

<!DOCTYPE html>

<html>
<head>
	<title>Insert title here</title>
	<meta charset='UTF-8'>
</head>
<body>

	<form action='controller.jsp' method='POST'>
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

</body>
</html>