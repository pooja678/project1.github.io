package com.builders.controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.builders.dao.MemberDao;
import com.builders.daoImpl.MemberDaoImpl;

import com.builders.model.Member;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Member member = new Member();

		String email = request.getParameter("EMAIL");
		String password = request.getParameter("PASS");

		System.out.println("Email is: -" + email);
		System.out.println("Password is: -" + password);
		String encryptedPassword = null;

		try {
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			messageDigest.update(password.getBytes());

			byte[] bytes = messageDigest.digest();

			// This bytes[] has bytes in decimal format. Convert it to hexadecimal format
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < bytes.length; i++) {
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}

			// Get complete hashed password in hex format
			encryptedPassword = sb.toString();

			System.out.println("Encrypted password is :-" + encryptedPassword);

		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		MemberDao dao = new MemberDaoImpl();
		member = dao.validate(email, password);
		RequestDispatcher rd = null;

		System.out.println("Member is " + member.getEmail() + " " + member.getRole() + " " + member.getPassword());

		if (member != null && member.getRole().equals("USER")) {
			HttpSession session = request.getSession();
			session.setAttribute("user", member);
			System.out.println("session: -" + session.getAttribute("user"));
			System.out.println("session: -" + member.getRole());
			rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			return;
		} else {

			String loginURI = request.getContextPath() + "/Admin";

			if (member != null && member.getRole().equals("ADMIN"))

			{

				System.out.println("URL IS :" + loginURI);
				System.out.println(
						"ADMIN IS :" + member.getRole() + ": " + member.getEmail() + ": " + member.getPassword());
				HttpSession session = request.getSession();

				session.setAttribute("admin", member);

				System.out.println("session attribyte:- " + session.getAttribute("admin"));
				System.out.println(loginURI + "/timetable.jsp");
				response.sendRedirect(loginURI + "/home.jsp");

			} else {

				response.getWriter().println("<h1>you are not logged in please login to view this page</h1>");
				rd = request.getRequestDispatcher("error.jsp");
				rd.forward(request, response);
			}
		}

	}

}
