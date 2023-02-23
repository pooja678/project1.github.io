<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.builders.dao.TimeTableDao"%>
<%@page import="com.builders.daoImpl.TimeTableDaoImpl"%>
<%@page import="com.builders.model.TimeTable"%>

<%@ include file="header.jsp"%>


<%
	if (session.getAttribute("admin") == null) {
		response.sendRedirect("/Builders/login.jsp");
	}
%>

<%
	String str = request.getParameter("update");
	int scheduleId = Integer.parseInt(str.trim());

	System.out.println("schedule id is:-" + str);
	TimeTableDao dao = new TimeTableDaoImpl();
	TimeTable schedule = dao.getScheduleById(scheduleId);
%>

<%
	if (request.getAttribute("updateSchedule") == "success") {
%>
<div class="card-body">
	<div class="alert alert-success">
		<strong>Success!</strong> Schedule Updated Successfully.
	</div>

	<%
		} else if (request.getAttribute("updateSchedule") == "error") {
	%>
	<div class="alert alert-danger">
		<strong>Error!</strong>Schedule Not Updated Successfully!!.
	</div>
</div>

<%
	}
%>




<%@ include file="sidebar.jsp"%>

<div class="page-wrapper">
	<div class="content-wrapper">

		<div class="col-md-4 mb-3">
			<label for="validationServer02"></label> <input type="hidden"
				class="form-control" id="validationServer02"
				value=<%=schedule.getScheduleId()%> placeholder="Plan Name"
				name="scheduleid" required>
		
		</div>

		<div class="col-lg-12">
			<div class="card card-default">
				<div class="card-header card-header-border-bottom">
					<h2>Edit Schedule</h2>
				</div>
				<div class="card-body">
					<form action="/Builders/UpdateSchedule" method="post">
						<div class="form-row">





							<div class="col-md-4 mb-3">
								<label for="validationServer02">Schedule Day</label> <input
									type="text" class="form-control" id="validationServer02"
									value=<%=schedule.getDay()%> placeholder="Plan Name" name="day"
									required> <select name="day" id="cars"
									value=<%=schedule.getDay()%>>
								<option value="mon">Monday</option>
									<option value="tues">Tuesday</option>
									<option value="wed">Wednesday</option>
									<option value="thur">Thursday</option>
									<option value="fri">Friday</option>
									<option value="sat">Saturday</option>
									<option value="sun">Sunday</option>
								</select>



								<%--                        
                  --%>
								<div class="valid-feedback">Looks good!</div>
							</div>

							<div class="col-md-4 mb-3">
								<label for="validationServer02">Schedule Time</label> <input
									type="text" class="form-control" id="validationServer02"
									value=<%=schedule.getTime()%> placeholder="Plan Price"
									name="time" required> <select name="time" id="cars"
									value=<%=schedule.getTime()%>>
										<option value="6-8pm">6:00am-8:00am</option>
									<option value="7-9am">10:00am-12:00pm</option>
									<option value="5-7am">5:00pm-7:00pm</option>
										<option value="5-7am">7:00pm-9:00pm</option>
								</select>

						
							</div>



						</div>

						<button class="btn btn-primary" type="submit">Update
							Schedule</button>
					</form>
				</div>
			</div>


		</div>
	</div>
	<%@include file="footer.jsp"%>
</div>








