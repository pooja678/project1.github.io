<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>


<%
	if (session.getAttribute("admin") == null) {
		response.sendRedirect("/Builders/login.jsp");
	}
%>

<%
	if (request.getAttribute("addTrainer") == "success") {
%>
<div class="card-body">
	<div class="alert alert-success">
		<strong>Success!</strong> Trainer Added Successfully.
	</div>

	<%
		} else if (request.getAttribute("addTrainer") == "error") {
	%>
	<div class="alert alert-danger">
		<strong>Error!</strong>Trainer Not Added Successfully.
	</div>
</div>

<%
	}
%>


<%@include file="sidebar.jsp"%>
<div class="page-wrapper">
	<div class="content-wrapper">

		<div class="col-lg-12">
			<div class="card card-default">
				<div class="card-header card-header-border-bottom">
					<h2>Add Trainer</h2>
				</div>
				<div class="card-body">
					<form action="/Builders/AddTrainer" method="post"
						enctype="multipart/form-data">
						<div class="form-row">
							<div class="col-md-4 mb-3">
								<label for="validationServer02">First Name</label> <input
									type="text" class="form-control" id="validationServer02"
									placeholder="Trainer First Name" name="fname" required>
							
							</div>

							<div class="col-md-4 mb-3">
								<label for="validationServer02">Last Name</label> <input
									type="text" class="form-control" id="validationServer02"
									placeholder="Trainer Last Name" name="lname" required>
								
							</div>


							<div class="col-md-4 mb-3">
								<label for="validationServer02">Email</label> <input type="text"
									class="form-control" id="validationServer02"
									placeholder="Trainer Email" name="email" required>
								
							</div>


							<div class="col-md-4 mb-3">
								<label for="validationServer02">Contact Number</label> <input
									type="text" class="form-control" id="validationServer02"
									placeholder="Trainer Contact Number" name="contactnumber"
									required>
							
							</div>

							<div class="col-md-4 mb-3">
								<label for="validationServer02">Gender</label>
								 <select
									name="gender" id="cars" class="form-control">
									<option value="male">Male</option>
									<option value="female">Female</option>

								</select>
								</div>
								

							<div class="col-md-4 mb-3">
								<label for="validationServer02">Address</label> <input
									type="text" class="form-control" id="validationServer02"
									placeholder="Trainer Address" name="address" required>
							
							</div>



							<div class="col-md-4 mb-3">
								<label for="validationServer02">Upload Image</label> <input
									type="file" class="form-control" id="validationServer02"
									placeholder="Trainer Image" name="image" required>

							</div>


						</div>

						<button class="btn btn-primary" type="submit">Add Trainer</button>
						</div>
					</form>
				</div>
			</div>


		</div>
	</div>
	<%@include file="footer.jsp"%>
</div>

