<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index.jsp</title>
</head>
<body>

<h1>index.jsp</h1>
<hr/>

<h3> <%=session.getAttribute("login")%>님 환영합니다.</h3>

<a href="controller.jsp?command=logout">logout</a>

</body>
</html>