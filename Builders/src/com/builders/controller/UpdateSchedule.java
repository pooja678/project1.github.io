package com.builders.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.builders.dao.TimeTableDao;
import com.builders.daoImpl.TimeTableDaoImpl;

import com.builders.model.TimeTable;

/**
 * Servlet implementation class UpdateSchedule
 */
@WebServlet("/UpdateSchedule")
public class UpdateSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateSchedule() {
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
			String id = request.getParameter("scheduleId");
			String time = request.getParameter("time");
			String day = request.getParameter("day");

			int scheduleId = Integer.parseInt(id.trim());

			TimeTableDao scheduleDao = new TimeTableDaoImpl();

			TimeTable schedule = new TimeTable();
			schedule.setScheduleId(scheduleId);
			schedule.setDay(day);
			schedule.setTime(time);

			if (scheduleDao.updateSchedule(schedule))
				;

			List<TimeTable> scheduleList = scheduleDao.getAllSchedule();
			if (scheduleList != null) {
				request.setAttribute("updateSchedule", "success");
				System.out.println("*********************");
				request.setAttribute("list", scheduleList);
				rd = request.getRequestDispatcher("updateMember.jsp");
				rd.forward(request, response);
			} else {
				request.setAttribute("updateSchedule", "error");
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
