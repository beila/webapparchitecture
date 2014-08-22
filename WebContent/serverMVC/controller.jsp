<%@ page contentType="text/html; charset=UTF-8"
	import="model.*"
 %>

<%
	String command = request.getParameter("command");

	if ("login".equals(command)
			&& "POST".equalsIgnoreCase(request.getMethod())) {
%>
        <jsp:useBean id="loginDo" class="model.LoginDo" />
        <jsp:setProperty name="loginDo" property="*" />
        
        <jsp:useBean id="loginSo" class="model.LoginSo" />
<%
		if (loginSo.confirmLogin(loginDo)) {
			session.setAttribute("login", loginDo.getId());
		}
	}
	
	if ("logout".equals(command)) {
		session.removeAttribute("login");
	}

    request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
%>