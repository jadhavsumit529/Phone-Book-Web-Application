package com.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DbConnect;
import com.dao.userDAO;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	/**
	 * this private static final long is auto generated for removing error
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User u = new User(name, email, password);
		userDAO dao = new userDAO(DbConnect.getconn());
		boolean f = dao.userRegister(u);

		HttpSession session = request.getSession();
		if (f) {
			session.setAttribute("successmsg", "User Registere Successfully...");
			response.sendRedirect("register.jsp");
			// System.out.println("User Registered Successfully...");
		} else {
			session.setAttribute("errormsg", "Something Wrong on Server...");
			response.sendRedirect("register.jsp");
			// System.out.println("Something Wrong on Server...");
		}
	}
}
