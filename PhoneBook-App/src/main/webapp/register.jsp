<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>
</head>
<body style = "background-color: #faf8f7;">
	<%@include file="component/navbar.jsp"%>

	<div class="container fluid>
	<div class ="row" p-2>
	<div class = "col-md-7 offset-md-3">
	<div class = "card">
	<div class = "card-body">
	<h4 class="text-center text-success">Registration Form</h4>
	
	<%  String successmsg = (String)session.getAttribute("successmsg");
		String errormsg = (String)session.getAttribute("errormsg");
		
		if(successmsg != null)
		{
	%>
		<p class="text-success text-center"><%=successmsg%></p>
	<%  session.removeAttribute("successmsg");
		}
		if(errormsg != null)
		{
	%>
		<p class="text-danger text-center"><%=errormsg%></p>
	<% session.removeAttribute("errormsg");
		}
	%>
	
	<form action="register" method="post">
	  <div class="form-group">
	    <label for="exampleInputEmail1">Enter Name</label>
	    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
	  </div>
	  <div class="form-group">
	    <label for="exampleInputEmail1">Email address</label>
	    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">Password</label>
	    <input name="password" type="password" class="form-control" id="exampleInputPassword1">
	 <div class="text-center mt-2">
	 <button type="submit" class="btn btn-primary">Submit</button>
	 </div>
	  
	</form></div>
	</div>
	</div>
	</div>
	</div>
	<div style="margin-top: 245px">
	<%@include file="component/footer.jsp" %>
	</div>
	</body>
	</html>