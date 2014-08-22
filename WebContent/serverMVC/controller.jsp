<%@ page contentType="text/html; charset=UTF-8"
	import="modelForServerMVC.*"
 %>

<%
	String command = request.getParameter("command");

	if ("login".equals(command)
			&& "POST".equalsIgnoreCase(request.getMethod())) {
%>
        <jsp:useBean id="loginDo" class="modelForServerMVC.LoginDo" />
        <jsp:setProperty name="loginDo" property="*" />
        
        <jsp:useBean id="loginSo" class="modelForServerMVC.LoginSo" />
<%
		if (loginSo.confirmLogin(loginDo)) {
			session.setAttribute("login", loginDo.getId());
		}
	}
	
	if ("logout".equals(command)) {
		session.invalidate();
        response.sendRedirect("controller.jsp");
        return;
	}

    request.getRequestDispatcher("/WEB-INF/viewsForServerMVC/login.jsp").forward(request, response);
%>