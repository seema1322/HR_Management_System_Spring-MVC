
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Batch Page</title>
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

p, h1, h2, h3, h4, h5, h6, ul {
	margin: 0;
}

img {
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
	padding-top: 36px;
	padding-left: 45px;
	padding-right: 45px;
}

.inner h3 {
	text-transform: uppercase;
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

/*# sourceMappingURL=style.css.map */
</style>
</head>
<body>

	<div class="wrapper"
		style="background-image: url('');">
		<div class="inner">
			<div class="image-holder">
				<img
					src="https://img.freepik.com/premium-photo/studious-boy-classroom-raising-hand-answering-question_993014-576.jpg?w=740"
					alt="" height="350px">
			</div>
			<%
			int id= Integer.parseInt(request.getParameter("id"));
			%>
			<form action="addbatch?userid=<%=id%>">
				<h3>Add Batch Form</h3>

				<div class="form-wrapper">
					<input readonly type="number" value="<%=id%>" class="form-control"
						name="userid" > <i class="zmdi zmdi-email"></i>
				</div>
				<div class="form-wrapper">
					<input type="text" placeholder="Subject Name" class="form-control"
						name="subject"> <i class="zmdi zmdi-email"></i>
				</div>
				<div class="form-wrapper">
					<input type="text" placeholder="Active" class="form-control"
						name="status" value="Active" disabled="disabled"> <i class="zmdi zmdi-account"></i>
				</div>
				<button>
					Add <i class="zmdi zmdi-arrow-right"></i>
				</button>
			</form>
		</div>
	</div>

</body>
</html>