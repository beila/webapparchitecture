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
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
		} else {
			response.sendRedirect("login.html");
		}
		
	}
%>