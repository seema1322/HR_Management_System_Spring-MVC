<%@page import="com.ty.dao.UserDao"%>
<%@page import="com.ty.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- MATERIAL DESIGN ICONIC FONT -->
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

<!-- STYLE CSS -->
<style type="text/css">
@font-face {
	font-family: "Poppins-Regular";
	src: url("../fonts/poppins/Poppins-Regular.ttf");
}

@font-face {
	font-family: "Poppins-SemiBold";
	src: url("../fonts/poppins/Poppins-SemiBold.ttf");
}

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	font-family: "Poppins-Regular";
	color: #333;
	font-size: 13px;
	margin: 0;
}

input, textarea, select, button {
	font-family: "Poppins-Regular";
	color: #333;
	font-size: 13px;
}

img {
	display: flex;
	max-width: 100%;
}

ul {
	padding-left: 0;
	margin-bottom: 0;
}

a:hover {
	text-decoration: none;
}

:focus {
	outline: none;
}

.wrapper {
	min-height: 100vh;
	background-size: cover;
	background-repeat: no-repeat;
	display: flex;
	align-items: center;
}

.inner {
	padding: 20px;
	background: #fff;
	max-width: 850px;
	margin: auto;
	display: flex;
}

.inner .image-holder {
	width: 40%;
}

.inner form {
	width: 50%;
	padding-top: 40px;
	padding-left: 45px;
	padding-right: 45px;
}

.inner h3 {
	font-size: 25px;
	font-family: "Poppins-SemiBold";
	text-align: center;
	margin-bottom: 28px;
}

.form-group {
	display: flex;
}

.form-group input {
	width: 40%;
}

.form-group input:first-child {
	margin-right: 25px;
}

.form-wrapper {
	position: relative;
}

.form-wrapper i {
	position: absolute;
	bottom: 9px;
	right: 0;
}

.form-control {
	border: 1px solid #333;
	border-top: none;
	border-right: none;
	border-left: none;
	display: block;
	width: 100%;
	height: 30px;
	padding: 0;
	margin-bottom: 25px;
}

.form-control::-webkit-input-placeholder {
	font-size: 13px;
	color: #333;
	font-family: "Poppins-Regular";
}

.form-control::-moz-placeholder {
	font-size: 13px;
	color: #333;
	font-family: "Poppins-Regular";
}

.form-control:-ms-input-placeholder {
	font-size: 13px;
	color: #333;
	font-family: "Poppins-Regular";
}

.form-control:-moz-placeholder {
	font-size: 13px;
	color: #333;
	font-family: "Poppins-Regular";
}

select {
	-moz-appearance: none;
	-webkit-appearance: none;
	cursor: pointer;
	padding-left: 20px;
}

select option[value=""][disabled] {
	display: none;
}

button {
	border: none;
	width: 164px;
	height: 51px;
	margin: auto;
	margin-top: 40px;
	cursor: pointer;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 0;
	background: #333;
	font-size: 15px;
	color: #fff;
	vertical-align: middle;
	-webkit-transform: perspective(1px) translateZ(0);
	transform: perspective(1px) translateZ(0);
	-webkit-transition-duration: 0.3s;
	transition-duration: 0.3s;
}

button i {
	margin-left: 10px;
	-webkit-transform: translateZ(0);
	transform: translateZ(0);
}

button:hover i, button:focus i, button:active i {
	-webkit-animation-name: hvr-icon-wobble-horizontal;
	animation-name: hvr-icon-wobble-horizontal;
	-webkit-animation-duration: 1s;
	animation-duration: 1s;
	-webkit-animation-timing-function: ease-in-out;
	animation-timing-function: ease-in-out;
	-webkit-animation-iteration-count: 1;
	animation-iteration-count: 1;
}

@
-webkit-keyframes hvr-icon-wobble-horizontal { 16.65% {
	-webkit-transform: translateX(6px);
	transform: translateX(6px);
}

33






.3


 


%
{
-webkit-transform




:


 


translateX




(




-5px




)




;
transform




:


 


translateX




(




-5px




)




;
}
49






.95


 


%
{
-webkit-transform




:


 


translateX




(




4px




)




;
transform




:


 


translateX




(




4px




)




;
}
66






.6


 


%
{
-webkit-transform




:


 


translateX




(




-2px




)




;
transform




:


 


translateX




(




-2px




)




;
}
83






.25


 


%
{
-webkit-transform




:


 


translateX




(




1px




)




;
transform




:


 


translateX




(




1px




)




;
}
100






%
{
-webkit-transform






:






translateX




(






0






)




;
transform






:






translateX




(






0






)




;
}
}
@
keyframes hvr-icon-wobble-horizontal { 16.65% {
	-webkit-transform: translateX(6px);
	transform: translateX(6px);
}

33






.3


 


%
{
-webkit-transform




:


 


translateX




(




-5px




)




;
transform




:


 


translateX




(




-5px




)




;
}
49






.95


 


%
{
-webkit-transform




:


 


translateX




(




4px




)




;
transform




:


 


translateX




(




4px




)




;
}
66






.6


 


%
{
-webkit-transform




:


 


translateX




(




-2px




)




;
transform




:


 


translateX




(




-2px




)




;
}
83






.25


 


%
{
-webkit-transform




:


 


translateX




(




1px




)




;
transform




:


 


translateX




(




1px




)




;
}
100






%
{
-webkit-transform






:






translateX




(






0






)




;
transform






:






translateX




(






0






)




;
}
}
@media ( max-width : 1199px) {
	.wrapper {
		background-position: right center;
	}
}

@media ( max-width : 991px) {
	.inner form {
		padding-top: 10px;
		padding-left: 30px;
		padding-right: 30px;
	}
}

@media ( max-width : 767px) {
	.inner {
		display: block;
	}
	.inner .image-holder {
		width: 100%;
	}
	.inner form {
		width: 100%;
		padding: 40px 0 30px;
	}
	button {
		margin-top: 60px;
	}
}

.btn {
	margin-top: 20px;
	font-size: larger;
}

.btn a {
	text-decoration: none;
}

/*# sourceMappingURL=style.css.map */
</style>
</head>
<body>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	UserDao userDao = new UserDao();
	User user = userDao.fndUserById(id);
	%>

	
	<div class="wrapper"
		style="background-image: url('https://cdn.pixabay.com/photo/2016/11/29/11/20/books-1869149_1280.jpg');">
		
		<div class="btn">
		<a href="trainerhome.jsp?id=<%=id%>"><button class="button"
				style="border: 1px solid #b4ccd6; font-size: large; border-radius: 10px; margin-left: 30px; background-color: #f7f8fa; height: 50px; width: 100px; background-image: linear-gradient(#f2f6f7, #9ecbde, #b4ccd6);">
				Home</button></a>

		</div>
		<div class="inner">
			<div class="image-holder">
				<img
					src="https://cdn.pixabay.com/photo/2023/10/16/10/23/teacher-8318917_1280.jpg"
					alt="" height="400px">
			</div>

			<form action="trainerhome.jsp" enctype="multipart/form-data">


				<div class="form-wrapper">
					<h4 class="form-control">
						NAME:
						<%=user.getName()%></h4>

				</div>
				<div class="form-wrapper">
					<h4 class="form-control">
						EMP-ID:<%=user.getEmpId()%></h4>

				</div>
				<div class="form-wrapper">
					<h4 class="form-control">
						EMAIL:<%=user.getEmail()%></h4>

				</div>
				<div class="form-wrapper">
					<h4 class="form-control">
						PHONE:<%=user.getPhoneNumber()%></h4>
					<i class="zmdi zmdi-account"></i>
				</div>
				<div class="form-wrapper">
					<h4 class="form-control">
						ROLE:<%=user.getRole().toLowerCase()%></h4>
					<i class="zmdi zmdi-email"></i>
				</div>
				<div class="form-wrapper">
					<%
					if (user.isStatus()) {
					%>
					<h4 class="form-control">STATUS: Active</h4>

					<%
					} else {
					%>
					<h4 class="form-control">STATUS: Active</h4>
					<%
					}
					%>

					<i class="zmdi zmdi-email"></i>
				</div>


			</form>
		</div>
	</div>

</body>
</html>