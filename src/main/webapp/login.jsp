<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style type="text/css">
@import url("https://fonts.googleapis.com/css?family=Lato:400,700");

#bg {
	background-image:
		url('https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg');
	position: fixed;
	left: 0;
	width: 100%;
	height: 100%;
	background-size: cover;
	filter: blur(5px);
}

body {
	font-family: 'Lato', sans-serif;
	color: #4A4A4A;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	overflow: hidden;
	margin: 0;
	padding: 0;
}

form {
	width: 350px;
	position: relative;
}

form .form-field::before {
	font-size: 20px;
	position: absolute;
	left: 15px;
	top: 17px;
	color: #888888;
	content: " ";
	display: block;
	background-size: cover;
	background-repeat: no-repeat;
}

form .form-field:nth-child(1)::before {
	background-image: url(img/user-icon.png);
	width: 20px;
	height: 20px;
	top: 15px;
}

form .form-field:nth-child(2)::before {
	background-image: url(img/lock-icon.png);
	width: 16px;
	height: 16px;
}

form .form-field {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	margin-bottom: 1rem;
	position: relative;
}

form input {
	font-family: inherit;
	width: 100%;
	outline: none;
	background-color: #fff;
	border-radius: 4px;
	border: none;
	display: block;
	padding: 0.9rem 0.7rem;
	box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
	font-size: 17px;
	color: #4A4A4A;
	text-indent: 40px;
}

form .btn {
	outline: none;
	border: none;
	cursor: pointer;
	display: inline-block;
	margin: 0 auto;
	padding: 0.9rem 2.5rem;
	text-align: center;
	background-color: #47AB11;
	color: #fff;
	border-radius: 4px;
	box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
	font-size: 17px;
}

form a {
	text-decoration: none;
}

form .span {
	background-image: linear-gradient(#f2f6f7, #f2f4f5, #b4ccd6);
	font-size: large;
}

.head {
	color: #030303;
	font-weight: bolder;
	font-size: x-large;
	margin-left: 15%;
	text-shadow: 2px 2px #ef82f5;
}

.head1 {
	color: #030303;
	font-weight: bolder;
	font-size: x-large;
	margin-left: 30%;
	text-shadow: 2px 2px #ef82f5;
}
</style>

</head>
<body>
	<!-- partial:index.partial.html -->
	<div id="bg"></div>

	<form action="homepage" method="post">
		<h4 style="color: black; text-align: center;">${message}</h4>
		<h2 class="head">HR MANAGEMENT</h2>
		<h2 class="head1">SYSTEM</h2>
		<div class="form-field" style="border: 2px solid #f5dae1;">
			<input type="email" placeholder="Email Address" name="email" />
		</div>

		<div class="form-field" style="border: 2px solid #f5dae1;">
			<input type="password" placeholder="Password" name="password" />
		</div>

		<div class="form-field">
			<button class="btn" type="submit">Log in</button>
			<br> <br>
		</div>
	</form>
	<br>


	<!--  <span class="span">New User? <a href="createaccount.jsp">Register</a></span> -->

</body>
</html>
