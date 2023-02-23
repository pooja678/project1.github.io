package com.builders.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.builders.dao.TrainerDao;

import com.builders.daoImpl.TrainerDaoImpl;

import com.builders.model.Trainer;

/**
 * Servlet implementation class AllTrainerList
 */
@WebServlet("/AllTrainerList")
public class AllTrainerList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AllTrainerList() {
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
		TrainerDao dao = new TrainerDaoImpl();
		List<Trainer> trainerList = dao.getAllTrainer();
		if (trainerList != null) {
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@");
			request.setAttribute("list", trainerList);
			System.out.println("##########################");
			rd = request.getRequestDispatcher("/Admin/trainerlist.jsp");
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
