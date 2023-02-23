package com.builders.controller;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class UpdatePlan
 */
@WebServlet("/UpdatePlan")
public class UpdatePlan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdatePlan() {
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

		try {
			String id = request.getParameter("planid");
			String planName = request.getParameter("planname");
			String planDescription = request.getParameter("description");
			String amount = request.getParameter("amount");
			int planAmount = Integer.parseInt(amount);

			int planId = Integer.parseInt(id.trim());
			System.out.println("plan id is :-" + planId);

			PlanDao planDao = new PlanDaoImpl();

			Plans plan = new Plans();

			plan.setPlanId(planId);
			plan.setPlanName(planName);
			plan.setPlanDescription(planDescription);
			plan.setAmount(planAmount);

			if (planDao.updatePlan(plan))
				;

			List<Plans> planList = planDao.getAllPlan();
			if (planList != null) {
				request.setAttribute("updatePlan", "success");
				System.out.println("*********************");
				request.setAttribute("list", planList);

				rd = request.getRequestDispatcher("/Admin/editplan.jsp");
				rd.forward(request, response);
			} else {
				request.setAttribute("updatePlan", "error");
				rd = request.getRequestDispatcher("error.jsp");
				rd.forward(request, response);
			}
		} catch (NullPointerException ex) {
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
