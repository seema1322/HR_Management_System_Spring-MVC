<%@page import="com.ty.dao.UserDao"%>
<%@page import="com.ty.dto.User"%>
<%@page import="java.util.Base64"%>
<%@page import="com.ty.dto.Attendance"%>
<%@page import="com.ty.dto.Image"%>
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
	background-image: linear-gradient(#403f45, #f2f4f5, #403f45);
	background-size: cover;
}

.tableatt {
	margin-left: 20%;
	width: 60%;
	background-image: linear-gradient(#f0dade, #f2f4f5, #f0dade);
}

.table {
	margin-left: 20%;
	width: 60%;
	background-image: linear-gradient(#f0dade, #f2f4f5, #f0dade);
}

.head1 {
	color: #8c6f74;
	margin-left: 20%;
}

.btn {
	margin-top: 20px;
	font-size: larger;
}

.btn a {
	text-decoration: none;
}
</style>
</head>
<body>

	
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	BatchDao batchDao = new BatchDao();
	List<Batch> batches = batchDao.findBatchByUserId(id);
	%>
	
	<div class="btn">
		<a href="trainerhome.jsp?id=<%=id%>"><button class="button"
				style="border: 1px solid #b4ccd6; font-size: large; border-radius: 10px; margin-left: 30px; background-color: #f7f8fa; height: 50px; width: 100px; background-image: linear-gradient(#f2f6f7, #9ecbde, #b4ccd6);">
				Home</button></a> 

	</div>
	<div class="head1">

		<h1>Allotted Batches</h1>

	</div>
	<table border="1" class="table">
		<tr>

			<th>Batch Id</th>
			<th>Allotted Time</th>
			<th>Completed Time</th>
			<th>Batch Status</th>
			<th>Subject</th>
			<th>Action?</th>
		</tr>
		<%
		if (batches != null) {
			for (Batch batch : batches) {
		%>

		<tr style="text-align: center;">

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
			<td><a href="updatebatch?id=<%=batch.getId()%>&userid=<%=id%>"><button>Completed?</button></a></td>

		</tr>
		<%
		}
		}
		%>
	</table>
	
</body>
</html>