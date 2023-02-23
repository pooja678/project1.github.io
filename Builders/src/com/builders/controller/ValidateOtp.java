package com.builders.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ValidateOtp
 */
@WebServlet("/ValidateOtp")
public class ValidateOtp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ValidateOtp() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			int value = Integer.parseInt(request.getParameter("otp"));
			HttpSession session = request.getSession();
			int otp = (int) session.getAttribute("otp");

			RequestDispatcher dispatcher = null;

			if (value == otp) {

				request.setAttribute("email", request.getParameter("email"));
				request.setAttribute("status", "success");
				dispatcher = request.getRequestDispatcher("updatepsw.jsp");
				dispatcher.forward(request, response);

			} else {
				request.setAttribute("message", "wrong otp");

				dispatcher = request.getRequestDispatcher("enter_otp.jsp");
				dispatcher.forward(request, response);

			}
		}

		catch (NullPointerException ex) {
			ex.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
