<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>
	<title>Insert title here</title>
	<meta charset='UTF-8'>
</head>

<body>

	<h1>before forward</h1>

	<jsp:forward page="reqProcB.jsp">
		<jsp:param name="phone" value="000-1234" />
	</jsp:forward>
	
	<h1>after forward</h1>

</body>
</html>