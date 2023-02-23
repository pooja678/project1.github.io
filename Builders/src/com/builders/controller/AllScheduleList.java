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
 * Servlet implementation class AllScheduleList
 */
@WebServlet("/AllScheduleList")
public class AllScheduleList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AllScheduleList() {
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
		TimeTableDao dao = new TimeTableDaoImpl();
		List<TimeTable> scheduleList = dao.getAllSchedule();
		if (scheduleList != null) {
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@");
			request.setAttribute("list", scheduleList);
			System.out.println("##########################");
			rd = request.getRequestDispatcher("/Admin/schedulelist.jsp");
			rd.forward(request, response);
		} else {
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
