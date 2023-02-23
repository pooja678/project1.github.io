package com.builders.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

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
 * Servlet implementation class AddTrainer
 */
@WebServlet("/AddTrainer")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class AddTrainer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddTrainer() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Trainer trainer = new Trainer();

		RequestDispatcher rd = null;
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String gender = request.getParameter("gender");
		// String password=request.getParameter("password");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("contactnumber");
		String address = request.getParameter("address");

		String image = "images/";

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

		trainer.setFirstName(firstName);
		trainer.setLastName(lastName);
		trainer.setEmail(email);
		trainer.setAddress(address);
		trainer.setContactNumber(phoneNumber);
		trainer.setGender(gender);

		trainer.setImage(image);

		TrainerDao trainerDao = new TrainerDaoImpl();
		if (trainerDao.addTrainer(trainer)) {
			request.setAttribute("addTrainer", "success");
			System.out.println("Trainer Added Successfully!!!");
			rd = request.getRequestDispatcher("/Admin/addtrainer.jsp");
			rd.forward(request, response);
		} else {
			request.setAttribute("addTrainer", "error");
			System.out.println("Trainer not added Successfully");
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
