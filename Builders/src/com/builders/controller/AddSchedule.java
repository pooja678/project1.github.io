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
import com.builders.model.TimeTable;

/**
 * Servlet implementation class AddSchedule
 */
@WebServlet("/AddSchedule")
public class AddSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddSchedule() {
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

		String time = request.getParameter("time");
		String day = request.getParameter("day");
		String scheduleName = request.getParameter("scheduleName");

		System.out.println("Time is:-" + time);
		System.out.println("Day is :-" + day);
		System.out.println("Name is :-"+scheduleName);

		TimeTable schedule = new TimeTable();

		schedule.setTime(time);
		schedule.setDay(day);
		schedule.setScheduleName(scheduleName);

		TimeTableDao scheduleDao = new TimeTableDaoImpl();

		if (scheduleDao.addSchedule(schedule)) {
			request.setAttribute("addSchedule", "success");
			System.out.println("Schedule Added Successfully...........");
			rd = request.getRequestDispatcher("/Admin/addschedule.jsp");
			rd.forward(request, response);

		} else {
			request.setAttribute("addSchedule", "error");
			System.out.println("Schedule Not Added Successfully......");

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
