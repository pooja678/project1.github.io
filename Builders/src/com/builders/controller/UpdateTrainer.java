package com.builders.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

import com.builders.dao.TrainerDao;
import com.builders.daoImpl.TrainerDaoImpl;

import com.builders.model.Trainer;

/**
 * Servlet implementation class UpdateTrainer
 */
@WebServlet("/UpdateTrainer")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class UpdateTrainer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateTrainer() {
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
			String id = request.getParameter("trainerid");
			String firstName = request.getParameter("fname");
			String lastName = request.getParameter("lname");
			String email = request.getParameter("email");

			String gender = request.getParameter("gender");
			String address = request.getParameter("address");
			String phoneNumber = request.getParameter("contactnumber");
			String image = "images/";

			int trainerId = Integer.parseInt(id);
			Part part = request.getPart("image");
			InputStream fis = part.getInputStream();
			byte[] bytes = IOUtils.toByteArray(fis);
			String path = request.getServletContext().getRealPath("") + "images";
			String fileName = path + File.separator + firstName + lastName + ".jpg";
			image = image.concat(firstName + lastName + ".jpg");
			System.out.println(fileName);
			FileOutputStream fos = new FileOutputStream(fileName);
			fos.write(bytes);
			fos.close();

			Trainer trainer = new Trainer();

			trainer.setTrainerId(trainerId);
			trainer.setFirstName(firstName);
			trainer.setLastName(lastName);
			trainer.setEmail(email);
			trainer.setAddress(address);
			trainer.setContactNumber(phoneNumber);
			trainer.setGender(gender);

			trainer.setImage(image);

			TrainerDao trainerDao = new TrainerDaoImpl();

			if (trainerDao.updateTrainer(trainer))
				;
			List<Trainer> trainerList = trainerDao.getAllTrainer();
			if (trainerList != null) {
				request.setAttribute("updateTrainer", "success");
				System.out.println("*********************");
				request.setAttribute("list", trainerList);
				rd = request.getRequestDispatcher("/Admin/edittrainer.jsp");
				rd.forward(request, response);
			} else {
				request.setAttribute("updateTrainer", "error");
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
