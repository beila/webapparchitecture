<%@ page contentType="text/html; charset=UTF-8" %>

<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>

<!DOCTYPE html>

<html>
<head>
	<title>Insert title here</title>
	<meta charset='UTF-8'>
</head>

<body>

	<h1>서버 응답입니다.</h1>
	<hr />
	<h2><%= name %>님의 나이는 <%= age %>살 입니다.</h2>

</body>
</html>