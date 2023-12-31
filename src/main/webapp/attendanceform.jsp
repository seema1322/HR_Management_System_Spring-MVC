
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="com.ty.dto.Batch"%>
<%@page import="com.ty.dao.BatchDao"%>
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

	<div class="wrapper" style="background-image: url('');">
		<div class="inner">
			<div class="image-holder">
				<img
					src="https://as1.ftcdn.net/v2/jpg/02/05/23/26/1000_F_205232638_mD976q54rdsDo3RKOBgqwfE8RalmZeiC.jpg"
					alt="" height="400px">
			</div>

			<%
			LocalDateTime today = LocalDateTime.now();
			int batchid = Integer.parseInt(request.getParameter("id"));
			BatchDao batchDao = new BatchDao();
			Batch batch = batchDao.findBatchById(batchid);
			LocalDateTime createdDate = batch.getCreatedDateAndTime();

			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-mm-dd");
			//String cuurentDate= today.format(formatter);
			String lastdate = createdDate.plusHours(24 * 5).format(formatter);

			boolean bi = today.isBefore(createdDate.plusHours(24*5));
			%>

			<%
			if (bi == false) {
			%>
			<h1 style="margin-top: 150px; margin-left: 20px; color: #f0a3ac;">Batch Completed<br> Access Denied</h1>

			<%
			} else {
			%>
			<form action="addattendance?batchId=<%=batch.getId()%>" method="post"
				enctype="multipart/form-data">
				<h3>Attendance Form</h3>
				<div class="form-wrapper">
					<input type="number" placeholder=<%=batchid%> class="form-control"
						name="batchId" disabled="disabled"> <i
						class="zmdi zmdi-account"></i>
				</div>
				<div class="form-wrapper">
					<input type="number" placeholder="Number of Student Present"
						class="form-control" name="numberOfStudent" required="required">
					<i class="zmdi zmdi-account"></i>
				</div>
				<div class="form-wrapper">
					<input type="file" placeholder="Add Screenshot"
						class="form-control" name="image" required="required"> <i
						class="zmdi zmdi-email"></i>
				</div>
				<div class="form-wrapper">
					<input type="date" class="form-control" name="date"
						min="<%=today%>" max="<%=lastdate%>"> <i
						class="zmdi zmdi-email"></i>
				</div>
				<button>
					Register <i class="zmdi zmdi-arrow-right"></i>
				</button>
			</form>
			<%
			}
			%>
		</div>
	</div>

</body>
</html>