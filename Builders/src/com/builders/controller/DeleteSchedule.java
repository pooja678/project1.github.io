package com.builders.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.builders.dao.TimeTableDao;
import com.builders.daoImpl.TimeTableDaoImpl;

/**
 * Servlet implementation class DeleteSchedule
 */
@WebServlet("/DeleteSchedule")
public class DeleteSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteSchedule() {
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
			String schedule = request.getParameter("scheduleid");
			int scheduleId = Integer.parseInt(schedule.trim());

			TimeTableDao scheduleDao = new TimeTableDaoImpl();

			scheduleDao.deleteSchedule(scheduleId);
			request.setAttribute("deleteSchedule", "success");
			System.out.println("Schedule deleted successfully.....!!!");
			rd = request.getRequestDispatcher("/AllScheduleList");
			rd.forward(request, response);
		}

		catch (NullPointerException e) {
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
