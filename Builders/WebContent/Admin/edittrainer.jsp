<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp"%>

<%@page import="com.builders.dao.TrainerDao"%>
<%@page import="com.builders.daoImpl.TrainerDaoImpl"%>
<%@page import="com.builders.model.Trainer"%>
<%
	if (session.getAttribute("admin") == null) {
		response.sendRedirect("/Builders/login.jsp");
	}
%>

<%
	String str = request.getParameter("update");
	int trainerId = Integer.parseInt(str.trim());
	System.out.println("id is:- " + str);
	TrainerDao dao = new TrainerDaoImpl();
	Trainer trainer = dao.getTrainerById(trainerId);
%>
<%
	if (request.getAttribute("updateTrainer") == "success") {
%>
<div class="card-body">
	<div class="alert alert-success">
		<strong>Success!</strong>Trainer Updated Successfully.
	</div>

	<%
		} else if (request.getAttribute("updateTrainer") == "error") {
	%>
	<div class="alert alert-danger">
		<strong>Error!</strong>Trainer Not Updated Successfully!!.
	</div>
</div>

<%
	}
%>





<%@include file="sidebar.jsp"%>
<div class="page-wrapper">
	<div class="content-wrapper">

		<div class="col-md-4 mb-3">
			<label for="validationServer02"></label> <input type="hidden"
				class="form-control" id="validationServer02"
				value=<%=trainer.getTrainerId()%> placeholder="Trainer Id"
				name="trainerid" required>

		</div>

		<div class="col-lg-12">
			<div class="card card-default">
				<div class="card-header card-header-border-bottom">
					<h2>Edit Trainer</h2>
				</div>
				<div class="card-body">
					<form action="/Builders/UpdateTrainer" method="post"
						enctype="multipart/form-data">
						<div class="form-row">





							<div class="col-md-4 mb-3">
								<label for="validationServer02">First Name</label> <input
									type="text" class="form-control" id="validationServer02"
									value=<%=trainer.getFirstName()%> placeholder="First Name"
									name="fname" required>

							</div>

							<div class="col-md-4 mb-3">
								<label for="validationServer02">Last Name</label> <input
									type="text" class="form-control" id="validationServer02"
									value=<%=trainer.getLastName()%> placeholder="Last Name"
									name="lname" required>

							</div>

							<div class="col-md-4 mb-3">
								<label for="validationServer02">Email</label> <input type="text"
									class="form-control" id="validationServer02"
									value="<%=trainer.getEmail()%>" placeholder="Email"
									name="email" required>

							</div>



							<div class="col-md-4 mb-3">
								<label for="validationServer02">Contact Number</label> <input
									type="text" class="form-control" id="validationServer02"
									value=<%=trainer.getContactNumber()%>
									placeholder="Contact Number" name="contactnumber" required>

							</div>



							<div class="col-md-4 mb-3">
								<label for="validationServer02">Gender</label> <input
									type="text" class="form-control" id="validationServer02"
									placeholder="Gender" name="gender" required> <select
									name="gender" id="cars" value=<%=trainer.getGender()%>>
									<option value="male">Male</option>
									<option value="female">Female</option>

								</select>




							</div>

							<div class="col-md-4 mb-3">
								<label for="validationServer02">Address</label> <input
									type="text" class="form-control" id="validationServer02"
									value=<%=trainer.getAddress()%> placeholder="Address"
									name="address" required>

							</div>


							<div class="col-md-4 mb-3">
								<label for="validationServer02">Upload Image</label> <input
									type="file" class="form-control" id="validationServer02"
									value=<%=trainer.getImage()%> placeholder="image" name="image"
									required>

							</div>



						</div>

						<button class="btn btn-primary" type="submit">Update
							Trainer</button>
					</form>
				</div>
			</div>


		</div>
	</div>
	<%@include file="footer.jsp"%>
</div>


