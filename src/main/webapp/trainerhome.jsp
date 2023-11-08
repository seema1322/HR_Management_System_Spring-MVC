<%@page import="com.ty.dto.User"%>
<%@page import="com.ty.dto.Batch"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trainer Dash-board</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<style type="text/css">
body {
	background-repeat: no-repeat;
	left: 0;
	top: 0;
	width: 100%;
	height: 573px;
	background-size: cover;
	background-image:
		url("https://cdn.pixabay.com/photo/2017/10/21/12/36/training-2874597_1280.jpg");
}

.heading {
	height: 70px;
	margin-top: 20px;
	text-align: center;
	font-stretch: expanded;
	font-size: xx-large;
	font-weight: bolder;
	margin-top: 20px;
	margin-bottom: 10px;
	font-size: xx-large;
	color: #c7e9f2;
}

.mynav {
	background-color: #e2d4fa;
}
</style>
</head>
<body>


	<%
	User user = (User) request.getAttribute("user");
	if(user != null){
	%>

	<div class="heading">
		<h1>WEL-COME ${user.getName().toUpperCase()}</h1>
	</div>

	<div class="bg"></div>

	<div class="mynav">

		<nav class="navbar navbar-expand-lg navbar-light bg-light">


			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent"
				style="font-size: x-large;">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="trainerhome.jsp">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="displaytrainerbatch.jsp?id=<%=user.getId()%>">My-Batch-Info</a></li>

					<li class="nav-item"><a class="nav-link"
						href="viewtrainer.jsp?id=<%=user.getId()%>">My-Info</a></li>
				</ul>
				<ul type="none" style="font-size: x-large;">
					<li class="nav-item"><a class="nav-link" href="login.jsp">Logout</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<%
	} else{
		int id= Integer.parseInt(request.getParameter("id"));
	%>
	<div class="heading">
		<h1>WEL-COME</h1>
	</div>

	<div class="bg"></div>

	<div class="mynav">

		<nav class="navbar navbar-expand-lg navbar-light bg-light">


			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent"
				style="font-size: x-large;">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="trainerhome.jsp">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="displaytrainerbatch.jsp?id=<%=id%>">My-Batch-Info</a></li>

					<li class="nav-item"><a class="nav-link"
						href="viewtrainer.jsp?id=<%=id%>">My-Info</a></li>
				</ul>
				<ul type="none" style="font-size: x-large;">
					<li class="nav-item"><a class="nav-link" href="login.jsp">Logout</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<%
	}
	%>

</body>
</html>