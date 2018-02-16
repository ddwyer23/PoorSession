<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log form</title>
</head>
<body>
	<h2>Login form</h2>

	<div id="login">
		<h1>Welcome Back!</h1>

		<form action="/SessionFixationDemo/Login" method="post">

			<div class="field-wrap">
				<label> username<span class="req">*</span>
				</label> <input required autocomplete="off" name="user" />
			</div>

			<div class="field-wrap">
				<label> Password<span class="req">*</span>
				</label> <input type="password" required autocomplete="off" name="pswd" />
			</div>

			<button class="button button-block" />
			Log In
			</button>

		</form>

	</div>

</body>
</html>