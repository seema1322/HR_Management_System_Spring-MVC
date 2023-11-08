<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HR Dash-board</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<style type="text/css">
body {
	background-image: url("https://t4.ftcdn.net/jpg/06/18/23/37/240_F_618233755_x5MLJCeEBwakLTB2onBpnLlH2n3aSuNr.jpg");
		<!--url("https://previews.123rf.com/images/funtap/funtap1907/funtap190700680/127742472-human-resource-management-hr-team-building-and-recruitment-concept-on-blurred-background.jpg");-->
	
	
	background-repeat: no-repeat;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-size: cover;
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
	color:#c5d5e3;
	background-image: linear-gradient(##49a3f2, #9ecbde, #b4ccd6);
}

.mynav {
	background-color: #e2d4fa;
}
</style>
</head>
<body>
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

			<div class="collapse navbar-collapse" id="navbarSupportedContent" style="font-size: x-large;">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="hrhome.jsp">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="displaybatch.jsp">Batch-Info</a></li>

					<li class="nav-item"><a class="nav-link"
						href="displaytrainer.jsp">Trainer-Info</a></li>
				</ul>
				<ul type="none" style="font-size: x-large;">
					<li class="nav-item"><a class="nav-link" href="login.jsp">Logout</a></li>
				</ul>

			</div>
		</nav>
	</div>

</body>
</html>