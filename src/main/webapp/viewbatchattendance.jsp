<%@page import="java.util.Base64"%>
<%@page import="com.ty.dto.Image"%>
<%@page import="com.ty.dto.Attendance"%>
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
</head>
<body>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	BatchDao batchDao = new BatchDao();
	Batch batch = batchDao.findBatchById(id);
	List<Attendance> attendances = batch.getAttendances();
	int num = 1;
	%>

	<div class="head1">
		<h1>Attendances of Batch</h1>
	</div>
	<table border="1" class="tableatt">
		<tr>

			<th>Serial No.</th>
			<th>Attendance Added Time</th>
			<th>Count of Student</th>
			<th>Image</th>
		</tr>
		<%
		if (attendances!= null && !attendances.isEmpty()) {
			for (Attendance attendance : attendances) {
		%>

		<tr style="text-align: center;">

			<%
			if (num <= 5) {
			%>
			<td><%=num%></td>
			<%
			num++;
			}
			%>
			<td><%=attendance.getCreatedDateAndTime()%></td>

			<td><%=attendance.getNumberOfStudent()%></td>

			<%
			Image image = attendance.getImage();
			String base64Image = Base64.getEncoder().encodeToString(image.getFile());
			%>

			<td><img src="data:image/jpeg;base64, <%=base64Image%>"
				alt="Image" height="150px" width="200px" /></td>
		</tr>
		<%
		}
		}
		%>

	</table>
</body>
</html>