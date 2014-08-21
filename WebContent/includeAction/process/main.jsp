<%@ page contentType="text/html; charset=UTF-8" %>

<%
	String name = "longlee";
%>

<!DOCTYPE html>

<html>
<head>
	<title>Insert title here</title>
	<meta charset='UTF-8'>
</head>

<body>

	<h2>작성자 : <%= name %></h2>
	<jsp:include page="otherPage.jsp" />
	<jsp:include page="anotherPage.html" />

</body>
</html>