package com.builders.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.builders.dao.MemberDao;
import com.builders.daoImpl.MemberDaoImpl;
import com.builders.model.Member;

/**
 * Servlet implementation class UpdateMember
 */
@WebServlet("/UpdateMember")
public class UpdateMember extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateMember() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, NumberFormatException {

		RequestDispatcher rd = null;
		try {
			String id = request.getParameter("memberId");
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String username = request.getParameter("username");
			String email = request.getParameter("email");
			String age = request.getParameter("age");
			String phonenumber = request.getParameter("phone");
			String password = request.getParameter("passward");

			MemberDao dao = new MemberDaoImpl();
			int dataid = Integer.parseInt(id.trim());

			Member member = new Member();

			member.setMemberId(dataid);
			member.setFirstName(firstname);
			member.setLastName(lastname);
			member.setUserName(username);
			member.setPassword(password);
			member.setEmail(email.toLowerCase());
			member.setAge(age);
			member.setContactNumber(phonenumber);

			if (dao.updateMember(member))
				;
			List<Member> userList = dao.getAllMember();
			if (userList != null) {
				System.out.println("*********************");
				request.setAttribute("list", userList);
				rd = request.getRequestDispatcher("/Admin/editmember.jsp");
				rd.forward(request, response);
			} else {
				rd = request.getRequestDispatcher("error.jsp");
				rd.forward(request, response);
			}

		} catch (NullPointerException e) {
			e.printStackTrace();
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
