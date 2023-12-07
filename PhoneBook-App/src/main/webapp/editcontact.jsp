<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<%
	if (user == null) {
		session.setAttribute("invalidmsg", "Login Please..");
		response.sendRedirect("login.jsp");
	}
	%>
<div
		class="container fluid>
	<div class ="row" p-2>
	<div class = "col-md-7 offset-md-3">
	<div class = "card">
	<div class = "card-body">
	<h4 class="text-center text-success">Edit Contact Page</h4>
	<%
String errormsg = (String) session.getAttribute("failedmsg");
if (errormsg != null) {%>
		<p class="text-danger text-center"><%=errormsg%></p>
	<%session.removeAttribute("failedmsg");
}%>
	
	<form action="update" method="post">
		<%@ page import="com.conn.DbConnect ,com.dao.ContactDAO , java.util.* ,com.entity.Contact ,java.lang.Integer " %>
		<% 
		int cid = Integer.parseInt(request.getParameter("cid"));
		ContactDAO dao = new ContactDAO(DbConnect.getconn());
		Contact c = dao.getContactById(cid);%>
		
		<input type="hidden" value="<%=cid%>" name="cid">
		
	  <div class="form-group">
	    <label for="exampleInputEmail1">Enter Name</label>
	    <input value="<%=c.getName()%>" name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
	  </div>
	  <div class="form-group">
	    <label for="exampleInputEmail1">Email address</label>
	    <input value="<%=c.getEmail()%>" name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
	  </div>
	  <div class="form-group">
	    <label for="exampleInputEmail">Enter Phone No</label>
	    <input value="<%=c.getPhno()%>" name="phno" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
	   </div>
	    <div class="form-group">
	    <textarea rows="3" cols="" placeholder="Enter About" name="about" class="form-control"><%=c.getAbout()%></textarea>
	   </div>
	 <div class="text-center mt-2">
	 <button type="submit" class="btn btn-primary">Update Contact</button>
	 </div>
	  
	</form></div>
	</div>
	</div>
	</div>
	</div>
	
</body>
</html>