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
	<div class = "col-md-5 offset-md-4">
	<div class = "card">
	<div class = "card-body">
	<h4 class="text-center text-success">Login Page</h4>
	<form action="Login" method="post">
	  <% String invalidmsg = (String)session.getAttribute("invalidmsg");
	  	if(invalidmsg != null)
	  	{%>
	  		<p class="text-danger text-center"><%=invalidmsg %></p>	
	  	<%
	  	session.removeAttribute("invalidmsg");
	  	}
	  %>
	  
	  <% String logmsg = (String)session.getAttribute("logmsg");
	  	if(logmsg != null)
	  	{%>
	  		<p class="text-success text-center"><%=logmsg %></p>	
	  	<%
	  	session.removeAttribute("logmsg");
	  	}
	  %>
	  
	  <div class="form-group">
	    <label for="exampleInputEmail1">Email address</label>
	    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">Password</label>
	    <input name="password" type="password" class="form-control" id="exampleInputPassword1">
	 <div class="text-center mt-2">
	 <button type="submit" class="btn btn-primary">Login</button>
	 </div>
	  
	</form></div>
	</div>
	</div>
	</div>
	</div>
	<div style="margin-top: 330px">
	<%@include file="component/footer.jsp" %>
	</div>
	</body>
	</html>