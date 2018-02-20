<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.sun.jndi.toolkit.url.UrlUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.salesforce.poorSession.model.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="/SessionFixationDemo/fonts/fonts.min.css" />
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

<style>
    body {
      font-family: 'Proxima Nova';
    }
        #grad {
    background: linear-gradient(to right, #1798c1, white);
}
</style>
</head>
<body style="margin-left:2%">
	<%
		if (session != null) {
			User user = (User) session.getAttribute("user");
			if (user != null) {
		
				
				%>
				
				<div id="grad" style="color:#FFFFFF;margin-left:-2%;padding-left:2%; margin-bottom:2%">
		<h2 style="display:inline-block;"><b>Welcome, <%=user.getFirstName()%> <%=user.getLastName()%>. </b></h2>
		<img style="display:inline-block; width:5%;height:5%;float:right;" src="/SessionFixationDemo/salesforce.png"> </img>
</div>
				

	
		<h4>
		Here's your SSN:  123-45-6789
	</h4>
	
	<% 
			}
			else {
				String url = response.encodeRedirectUrl("/Login.jsp");
				request.getRequestDispatcher(url).forward(request, response);
			}
		}
	%>

	<h4 style="margin-top:5%">
		Your session id is:
		<%=session.getId()%>
	</h4>

	<button class="btn btn-primary"><a href="<c:url value ="/Logout"/>" class="">Logout</a></button>

</body>
</html>