<%@page import="com.ty.dto.User"%>
<%@page import="com.ty.dao.UserDao"%>
<%@page import="com.ty.dto.Batch"%>
<%@page import="java.util.List"%>
<%@page import="com.ty.dao.BatchDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body {
	background-image:
		url("https://t3.ftcdn.net/jpg/06/27/63/40/240_F_627634054_MffoLxovaHpb2xd06yWtTdFhXRPQVsMB.jpg");
	<!--
	url ("https: //cdn.pixabay.com/photo/2020/06/21/00/43/teacher-5322852_1280.jpg");
	-->
	background-repeat: no-repeat;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-size: cover;
}

.btn {
	margin-top: 75px;
	font-size: larger;
}

.btn a {
	text-decoration: none;
}

.tableheading {
	margin-top: 60px;
	margin-left: 15%;
}

.batchtable {
	margin-left: 6%;
}

.table {
	border-color: #b4ccd6;
	background-image: linear-gradient(#665fc9, #f2f4f5, #665fc9);
}
</style>
</head>
<body>

	<div class="btn">
		<a href="hrhome.jsp"><button class="button"
				style="border: 1px solid #b4ccd6; font-size: large; border-radius: 10px; margin-left: 70px; background-color: #f7f8fa; height: 50px; width: 100px; background-image: linear-gradient(#665fc9, #9ecbde, #665fc9);">
				Home</button></a> <a href="signup.jsp"><button class="button"
				style="border: 1px solid #b4ccd6; font-size: large; border-radius: 10px; margin-left: 30px; background-color: #f7f8fa; height: 50px; width: 180px; background-image: linear-gradient(#665fc9, #9ecbde, #665fc9);">
				Add Trainer</button></a>


	</div>

	<h3 style="margin-left: 5%;">${message}</h3>
	<div class="batchtable">
		<h1 class="tableheading">List of Trainer</h1>

		<%
		UserDao userDao = new UserDao();
		List<User> users = userDao.findAllUser();
		%>

		<table border="1" class="table">
			<tr>

				<th>Trainer Id</th>
				<th>EMP-ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Role</th>
				<th>Status</th>
				<th>Add Batch
				<th>
			</tr>
			<%
			if (users != null) {
				for (User user : users) {
					if (user.getRole().equalsIgnoreCase("trainer")) {
			%>

			<tr>

				<td><%=user.getId()%></td>
				<td><%=user.getEmpId()%></td>
				<td><%=user.getName()%></td>
				<td><%=user.getEmail()%></td>
				<td><%=user.getPhoneNumber()%></td>
				<td><%=user.getRole()%></td>

				<%
				if (user.isStatus() == true) {
				%>
				<td>Active</td>
				<%
				} else {
				%>
				<td>Inactive</td>
				<%
				}
				%>
				<td><a href="addbatch.jsp?id=<%=user.getId()%>">Add</a></td>

			</tr>
			<%
			}
			}
			}
			%>
		</table>


	</div>

</body>
</html>