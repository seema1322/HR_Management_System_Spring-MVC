
<%@page import="com.ty.dao.ImageDao"%>
<%@page import="java.util.List"%>
<%@page import="com.ty.dto.Image"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Image> images = new ImageDao().findAllImages();
	if (images != null) {
		for (Image image : images) {

			String base64Image = Base64.getEncoder().encodeToString(image.getFile());
	%>


	<h1>
		Id :
		<%=image.getId()%></h1>
	<h1>
		Image : <img src="data:image/jpeg;base64, <%=base64Image%>"
			alt="Image" height="200px" width="300px"/>
	</h1>

	<%
	}
	}
	%>
</body>
</html>