<%@ page contentType="text/html; charset=UTF-8"
	import="model.*"
 %>

<%
	String command = request.getParameter("command");
	String forwardUrl = "";

	if (null == command) {
		String path = request.getRequestURL().toString();
		path = path.substring(path.lastIndexOf('/') +1);
		if ("controller.jsp".equals(path)) {
			forwardUrl = "/WEB-INF/views/login.jsp";
		}
	}

	if ("login".equals(command)
			&& "POST".equalsIgnoreCase(request.getMethod())) {
%>
        <jsp:useBean id="loginDo" class="model.LoginDo" />
        <jsp:setProperty name="loginDo" property="*" />
        
        <jsp:useBean id="loginSo" class="model.LoginSo" />
<%
		if (loginSo.confirmLogin(loginDo)) {
			session.setAttribute("login", loginDo.getId());
			forwardUrl = "/WEB-INF/views/index.jsp";
		} else {
			forwardUrl = "/WEB-INF/views/login.jsp";
		}
		
	}

	if (!"".equals(forwardUrl)) {
        request.getRequestDispatcher(forwardUrl).forward(request, response);
	}
%>