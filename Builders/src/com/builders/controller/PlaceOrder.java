package com.builders.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.builders.dao.PlanDao;
import com.builders.dao.UserOrderDao;
import com.builders.daoImpl.PlanDaoImpl;
import com.builders.daoImpl.UserOrderDaoImpl;
import com.builders.model.BuyDetails;
import com.builders.model.Member;
import com.builders.model.Plans;

/**
 * Servlet implementation class PlaceOrder
 */
@WebServlet("/PlaceOrder")
public class PlaceOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PlaceOrder() {
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

		String plan = request.getParameter("plan_id");
		PlanDao dao = new PlanDaoImpl();
		Plans plans = dao.getPlanById(Integer.parseInt(plan));

		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("user");
		System.out.println(member.getMemberId());

		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
		Date date = new Date();
		System.out.println(formatter.format(date));

		String date2 = formatter.format(date);

		BuyDetails order = new BuyDetails();

		int memberId = member.getMemberId();

		order.setMember(member);

		order.setOrder_date(date2);

		order.setPlan(plans);

		UserOrderDao orderDao = new UserOrderDaoImpl();
		boolean OrderIdExist = orderDao.MemberIdAndPlanIdExist(memberId);
		System.out.println("orderId is place order controller: " + OrderIdExist);
		if (OrderIdExist) {
			if (orderDao.addOrder(order)) {
				System.out.println(memberId);
				request.setAttribute("addOrder", "success");
				System.out.println("Order Added Successfully.............");
				rd = request.getRequestDispatcher("enrollnow.jsp");
				rd.forward(request, response);
			}
			/*
			 * else { request.setAttribute("addOrder", "error");
			 * System.out.println("Order Not Added Successfully................."); rd =
			 * request.getRequestDispatcher("myProfile.jsp"); rd.forward(request, response);
			 * 
			 * 
			 * }
			 */
			else {
				request.setAttribute("addOrder", "error");
				System.out.println("Order Not Added Successfully.................");
				rd = request.getRequestDispatcher("myProfile.jsp");
				rd.forward(request, response);
			}
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
