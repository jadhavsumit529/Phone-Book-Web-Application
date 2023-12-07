<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file = "component/allCss.jsp" %>
<style type="text/css">
.back-img{
	background: url("img/phone5.jpg");
	width : 100%;
	height : 85vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp" %>
	
	<div class="container-fluid back-img text-center text-danger">
	<h1>Welcome to PhoneBook app</h1>
	</div>
	
<%@include file="component/footer.jsp" %>

</body>
</html> 	