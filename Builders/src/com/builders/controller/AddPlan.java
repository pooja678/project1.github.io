package com.builders.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.builders.dao.PlanDao;
import com.builders.daoImpl.PlanDaoImpl;
import com.builders.model.Plans;

/**
 * Servlet implementation class AddPlan
 */
@WebServlet("/AddPlan")
public class AddPlan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddPlan() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd = null;
		String planName = request.getParameter("planname");

		String planDescription = request.getParameter("description");

		String planAmount = request.getParameter("amount");

		int amount = Integer.parseInt(planAmount);

		Plans plan = new Plans();

		plan.setPlanName(planName);
		plan.setPlanDescription(planDescription);
		plan.setAmount(amount);

		request.setAttribute("plan", "plan");

		PlanDao planDao = new PlanDaoImpl();
		if (planDao.addPlan(plan)) {
			request.setAttribute("addPlan", "success");
			System.out.println("Plans Added Successfully.............");
			rd = request.getRequestDispatcher("/Admin/addplan.jsp");
			rd.forward(request, response);
		}

		else {
			request.setAttribute("addPlan", "error");
			System.out.println("Plans Not Added Successfully.................");
			rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
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
