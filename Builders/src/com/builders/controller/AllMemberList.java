package com.builders.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.builders.dao.MemberDao;
import com.builders.daoImpl.MemberDaoImpl;
import com.builders.model.Member;

/**
 * Servlet implementation class AllMemberList
 */
@WebServlet("/AllMemberList")
public class AllMemberList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AllMemberList() {
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
		MemberDao dao = new MemberDaoImpl();
		List<Member> memberList = dao.getAllMember();
		if (memberList != null) {
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@");
			request.setAttribute("list", memberList);
			System.out.println("##########################");
			rd = request.getRequestDispatcher("/Admin/memberlist.jsp");
			rd.forward(request, response);
		} else {
			rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}

		response.getWriter().append("Served at: ").append(request.getContextPath());
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
