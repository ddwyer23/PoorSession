<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.sun.jndi.toolkit.url.UrlUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.salesforce.poorSession.model.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if (session != null) {
			User user = (User) session.getAttribute("user");
			if (user != null) {
				%>
	<h2>
		Welcome Home:
		<%=user.getFirstName()%>
		<%=user.getLastName()%>
	</h2>
	<% 
			}
			else {
				String url = response.encodeRedirectUrl("/Login.jsp");
				request.getRequestDispatcher(url).forward(request, response);
			}
		}
	%>

	<h3>
		your session is:
		<%=session.getId()%>
	</h3>

	<a href="<c:url value ="/Logout"/>" class="w3-btn w3-black">Logout</a>

</body>
</html>