package com.builders.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.builders.dao.TrainerDao;

import com.builders.daoImpl.TrainerDaoImpl;

/**
 * Servlet implementation class DeleteTrainer
 */
@WebServlet("/DeleteTrainer")
public class DeleteTrainer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteTrainer() {
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
			String str = request.getParameter("trainerid");
			int trainerId = Integer.parseInt(str);
			System.out.println("delete is:-" + str);

			TrainerDao dao = new TrainerDaoImpl();
			dao.deleteTrainer(trainerId);

			request.setAttribute("deleteTrainer", "success");
			System.out.println("Trainer Deleted Successfully!!!!");

			rd = request.getRequestDispatcher("/AllTrainerList");
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
