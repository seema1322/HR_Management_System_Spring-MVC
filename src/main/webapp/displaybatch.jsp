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
		url("https://cdn.pixabay.com/photo/2017/12/22/08/01/book-3033196_1280.jpg");
	background-repeat: no-repeat;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-size: cover;
}

.btn {
	margin-top: 20px;
	font-size: larger;
}

.btn a {
	text-decoration: none;
}

.tableheading {
	margin-left: 16%;
}

.batchtable {
	margin-left: 25%;
}

.table {
	background-image: linear-gradient(#f2f6f7, #f2f4f5, #b4ccd6);
}

</style>
</head>
<body>

	<div class="btn">
		<a href="hrhome.jsp"><button class="button"
				style="border: 1px solid #b4ccd6; font-size: large; border-radius: 10px; margin-left: 30px; background-color: #f7f8fa; height: 50px; width: 100px; background-image: linear-gradient(#f2f6f7, #9ecbde, #b4ccd6);">
				Home</button></a> 

	</div>

	<h3 style="margin-left: 30%;">${message}</h3>
	<div class="batchtable">
		<h1 class="tableheading">List of Batches</h1>

		<%
		BatchDao batchDao = new BatchDao();
		List<Batch> batches = batchDao.findAllBatches();
		%>

		<table border="1" class="table">
			<tr>

				<th>Batch Id</th>
				<th>Batch Created Time</th>
				<th>Batch Completed Time</th>
				<th>Batch Status</th>
				<th>Subject</th>
				<th>Batch Info</th>
			</tr>
			<%
			if (batches != null) {
				for (Batch batch : batches) {
			%>

			<tr>

				<td><%=batch.getId()%></td>
				<td><%=batch.getCreatedDateAndTime()%></td>
				<%
				if (batch.isStatus() == false) {
				%>
				<td><%=batch.getCompletedDateAndTime()%></td>
				<td>Completed</td>
				<%
				} else {
				%>
				<td>NA</td>
				<td>Active</td>
				<%
				}
				%>

				<td><%=batch.getSubject()%></td>
				<td><a href="viewbatchattendance.jsp?id=<%=batch.getId()%>" style="text-decoration: none; color: black;">more
						details</a></td>
			</tr>
			<%
			}
			}
			%>
		</table>


	</div>
<!-- <a href="createbatch.jsp"><button class="button"
				style="border: 1px solid #b4ccd6; font-size: large; border-radius: 10px; margin-left: 30px; background-color: #f7f8fa; height: 50px; width: 180px; background-image: linear-gradient(#f2f6f7, #9ecbde, #b4ccd6);">
				Add New Batch</button></a> -->
</body>
</html>