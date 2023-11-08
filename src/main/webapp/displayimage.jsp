
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

<h1>${messgae}</h1>
	<%
	Image image = (Image) request.getAttribute("image");
	String base64Image = Base64.getEncoder().encodeToString(image.getFile());
	%>
	<h1>
		Id :
		<%=image.getId()%></h1>
	<h1>
		Image : <img src="data:image/jpeg;base64, <%=base64Image%>"
			alt="Image" height="300px" width="400px"/>
	</h1>

</body>
</html>