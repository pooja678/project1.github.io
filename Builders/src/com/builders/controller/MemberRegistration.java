package com.builders.controller;

import java.io.IOException;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.builders.dao.MemberDao;
import com.builders.daoImpl.MemberDaoImpl;
import com.builders.model.Member;
import com.builders.service.MailSendService;

/**
 * Servlet implementation class MemberRegistration
 */
@WebServlet("/MemberRegistration")
public class MemberRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean emailExist = false;
		Member member = new Member();
		MemberDao memberDao = new MemberDaoImpl();
		RequestDispatcher rd = null;
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String age = request.getParameter("age");

		System.out.println("age is :-" + age);
		String phoneNumber = request.getParameter("phoneNumber");
		System.out.println("Length of string is:-" + phoneNumber.length());
		try {

			String password = request.getParameter("password");
			String confirmPassword = request.getParameter("cpassword");
			String encryptedPassword = null;

			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			messageDigest.update(password.getBytes());

			byte[] bytes = messageDigest.digest();

			// This bytes[] has bytes in decimal format. Convert it to hexadecimal format
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < bytes.length; i++) {
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}

			// Get complete hashed password in hex format
			encryptedPassword = sb.toString();
			System.out.println("Encrypted password is :-" + encryptedPassword);

			member.setFirstName(firstName);
			member.setLastName(lastName);
			member.setUserName(userName);
			member.setEmail(email.toLowerCase());
			member.setContactNumber(phoneNumber);
			member.setAge(age);
			member.setPassword(encryptedPassword);

			emailExist = memberDao.isEmailExists(email);

			System.out.println("Email exists:-" + emailExist);

			Map<String, String> messages = new HashMap<String, String>();

			request.setAttribute("messages", messages); // Now it's available by ${messages}

			String emailRegex = "^(?=.{1,64}@)[A-Za-z0-9_-]+(\\.[A-Za-z0-9_-]+)*@"
					+ "[^-][A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$";

			String passwordRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,20}$";

			Pattern p1 = Pattern.compile(emailRegex);
			Pattern p2 = Pattern.compile(passwordRegex);

			Matcher m1 = p1.matcher(email);

			Matcher m2 = p2.matcher(password);

			boolean emailPattern = m1.find();
			boolean passwordPattern = m2.find();
			System.out.println("Email Pattern  is:-" + emailPattern);
			System.out.println("Password Pattern is:-" + passwordPattern);
			System.out.println("**********************************");

			System.out.println("password :- " + password);
			System.out.println("ConfirmPassword :- " + confirmPassword);

			if (!password.equals(confirmPassword)) {
				messages.put("password", "Password and confirmPassword does not match!!");
			}

			if (firstName.trim().isEmpty()) {
				messages.put("firstName", "FirstName Can't be Empty!!");
			}

			if (lastName.trim().isEmpty()) {
				messages.put("lastName", "LastName Can't be Empty!!");
			}

			if (userName.trim().isEmpty()) {
				messages.put("userName", "UserName Can't be Empty!!");
			}

			if (email.trim().isEmpty()) {
				messages.put("email", "Please Enter Your Email!!");
			}

			else {
				if (emailExist) {
					messages.put("email", "Email Already Exist!!");
				}

				else {
					if (!emailPattern) {
						messages.put("email", "Your email must follow this pattern. Eg:-abc@gmail.com");
					}

				}
			}

			System.out.println("?????????????????????????????????????????????????????????????");
			if (age.trim().isEmpty()) {
				messages.put("age", "Please Select Your Age!!");
			}

			if (phoneNumber.trim().isEmpty()) {
				messages.put("phoneNumber", "Please Enter Your Contact Number!!");
			}

			if (password.trim().isEmpty()) {
				messages.put("password", "Please Enter Your Password!!");
			} else {
				if (!passwordPattern) {
					messages.put("password",
							"Your password must contains at least 8 characters and at most 20 characters.\r\n"
									+ ", at least one digit.\r\n" + ", at least one upper case alphabet.\r\n"
									+ ", at least one lower case alphabet.\r\n"
									+ ", at least one special character which includes !@#$%&*()-+=^.\r\n"
									+ ",s doesn’t contain any white space.");
				}

				System.out.println("###################################################");
				System.out.println(Arrays.asList(messages));

			}

			System.out.println("Email Pattern  is Line No 163:-" + emailPattern);
			if (!firstName.trim().isEmpty() && !lastName.trim().isEmpty() && !userName.trim().isEmpty()
					&& !email.trim().isEmpty() && !age.trim().isEmpty() && !phoneNumber.trim().isEmpty()
					&& !password.trim().isEmpty() && emailPattern && passwordPattern) {
				if (!emailExist) {

					if (memberDao.addMember(member)) {
						request.setAttribute("messages", null);
						request.setAttribute("addMember", "success");
						System.out.println("DATA ADDED SUCCESSFULLY");
						MailSendService.sendMail(email, userName);
						System.out.println("Mail sent successfully!");
						rd = request.getRequestDispatcher("register.jsp");
						rd.forward(request, response);
					} else {
						request.setAttribute("addMember", "error");
						System.out.println("DATA NOT ADDED SUCCESSFULLY");
						rd = request.getRequestDispatcher("error.jsp");
						rd.forward(request, response);
					}
				} else {
					System.out.println("Email Id already exist");
				}

			} else {
				rd = request.getRequestDispatcher("register.jsp");
				rd.forward(request, response);
			}

		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
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
