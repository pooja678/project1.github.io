<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>


<%
	if (session.getAttribute("admin") == null) {
		response.sendRedirect("/Builders/login.jsp");
	}
%>


<%
	if (request.getAttribute("addSchedule") == "success") {
%>
<div class="card-body">
	<div class="alert alert-success">
		<strong>Success!</strong> Schedule Added Successfully.
	</div>

	<%
		} else if (request.getAttribute("addSchedule") == "error") {
	%>
	<div class="alert alert-danger">
		<strong>Error!</strong>Schedule Not Added Successfully.
	</div>
</div>

<%
	}
%>

<%@ include file="sidebar.jsp"%>

<div class="page-wrapper">
	<div class="content-wrapper">

		<div class="col-lg-12">
			<div class="card card-default">
				<div class="card-header card-header-border-bottom">
					<h2>Add Schedule</h2>
				</div>
				<div class="card-body">
					<form action="/Builders/AddSchedule" method="post">
						<div class="form-row">



								<div class="col-md-4 mb-3">
									<label for="validationServer02">Schedule Name</label> <input
										type="text" class="form-control" id="validationServer02"
										placeholder="Schedule Name" name="scheduleName" required="">

								</div>


							<div class="col-md-4 mb-3">
								<label for="validationServer02">Schedule Day</label> <select
									name="day" id="cars" class="form-control">
									<option value="mon">Monday</option>
									<option value="tues">Tuesday</option>
									<option value="wed">Wednesday</option>
									<option value="thur">Thursday</option>
									<option value="fri">Friday</option>
									<option value="sat">Saturday</option>
									<option value="sun">Sunday</option>
								</select>



								<div class="valid-feedback">Looks good!</div>
							</div>

							<div class="col-md-4 mb-3">
								<label for="validationServer02">Schedule Time</label> <select
									name="time" id="cars" class="form-control">
									<option value="6-8pm">6:00am-8:00am</option>
									<option value="7-9am">10:00am-12:00pm</option>
									<option value="5-7am">5:00pm-7:00pm</option>
										<option value="5-7am">7:00pm-9:00pm</option>
								</select>

								<div class="valid-feedback">Looks good!</div>
							</div>



						<div class="col-md-4 mb-3">

						<button class="btn btn-primary" type="submit">Add
							Schedule</button>
							</div>
					</form>
				</div>
			</div>


		</div>
	</div>
	<%@include file="footer.jsp"%>
</div>


