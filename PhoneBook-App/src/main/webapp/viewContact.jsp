<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file = "component/allCss.jsp" %>
<style type="text/css">
.crd-ho:hover{
background-color: #f7f7f7;
}
</style>

</head>
<body>
	<%@include file="component/navbar.jsp" %>
	<%	if(user == null){
		session.setAttribute("invalidmsg","Login Please..");
		response.sendRedirect("login.jsp");
	}
	%>
	<%
		String succmsg = (String)session.getAttribute("succmsg");
		String errormsg = (String) session.getAttribute("failedmsg");
		if(succmsg != null)
		{%>
			<div class="alert alert-success" role="alert"><%= succmsg %></div>
		<%  session.removeAttribute("succmsg");
		}
		if (errormsg != null) {%>
		<p class="text-danger text-center"><%=errormsg%></p>
	<%session.removeAttribute("failedmsg");
}%>
	
	
	<div class="container">
	<div class="row p-4">
	
	<%@ page import="com.conn.DbConnect ,com.dao.ContactDAO , java.util.* ,com.entity.Contact" %>
	<%
	if(user != null){
	ContactDAO dao = new ContactDAO(DbConnect.getconn());
	List<Contact> contact = dao.getAllContact(user.getId());
	
	for(Contact c : contact)
	{%>
		<div class="col-md-3">
		<div class="card crd-ho">
		<div class="card-body">
		<h5>Name: <%=c.getName() %></h5>
		<p>phone no: <%=c.getPhno() %></p>
		<p>Email:<%=c.getEmail() %></p>
		<p>about : <%=c.getAbout() %></p>
		<div class="text-center">
		<a href="editcontact.jsp?cid=<%=c.getId() %>" class="btn btn-success btn-sm text-white">Edit</a>
		<a href="delete?cid=<%=c.getId() %>" class="btn btn-danger btn-sm text-white">Delete</a>
		</div>
		</div>
		</div>
		</div>
	<%}}
	%>
	
	</div>
	</div>
	
</body>
</html>