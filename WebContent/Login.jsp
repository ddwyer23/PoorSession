<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
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
<body style="margin-left:2%; background-color:#f7f4e9">
<div id="grad" style="color:#FFFFFF;margin-left:-2%;padding-left:2%; margin-bottom:2%">
		<h2 style="display:inline-block;"><b>Insecure Application <div style="display: inline-block; font-size:28px">®</div></b></h2>
		<img style="display:inline-block; width:5%;height:5%;float:right;" src="/SessionFixationDemo/salesforce.png"> </img>
</div>
	<h3 >Login</h3>

	<div id="login" style="background-color:#f7f4e9">

		<form action="<c:url value = "/Login"/>" method="post">

			<div class="field-wrap">
				<label> Username<span class="req">:</span>
				</label> <input required autocomplete="off" name="user" />
			</div>

			<div class="field-wrap">
				<label> Password<span class="req">:</span>
				</label> <input type="password" required autocomplete="off" name="pswd" />
			</div>

			<button class="btn btn-primary 	 button button-block" />
			Submit
			</button>

		</form>
		
	</div>
	<h4 style="margin-top:5%">
		Your session id is:
		<%=session.getId()%>
	</h4>
</body>
</html>