<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>
	<title>Insert title here</title>
	<meta charset='UTF-8'>
</head>

<body>

	<h1>before redirect</h1>

<%
	response.sendRedirect("reqProcB.jsp");
%>
	
	<h1>after redirect</h1>

</body>
</html>