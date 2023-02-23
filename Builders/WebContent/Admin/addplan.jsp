<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		if (session.getAttribute("admin") == null) {
			response.sendRedirect("/Builders/login.jsp");
		}
	%>

	<%@include file="sidebar.jsp"%>
	<div class="page-wrapper">
		<div class="content-wrapper">

			<%
				if (request.getAttribute("addPlan") == "success") {
			%>
			<div class="card-body">
				<div class="alert alert-success">
					<strong>Success!</strong> Plan Added Successfully.
				</div>

				<%
					} else if (request.getAttribute("addPlan") == "error") {
				%>
				<div class="alert alert-danger">
					<strong>Error!</strong>Plan Not Added Successfully.
				</div>
			</div>

			<%
				}
			%>






			<div class="col-lg-12">
				<div class="card card-default">
					<div class="card-header card-header-border-bottom">
						<h2>Add Plan</h2>
					</div>
					<div class="card-body">
						<form action="/Builders/AddPlan" method="post">
							<div class="form-row">
								<div class="col-md-4 mb-3">
									<label for="validationServer02">Plan Name</label> <input
										type="text" class="form-control" id="validationServer02"
										placeholder="Plan Name" name="planname" required="">

								</div>

								<div class="col-md-4 mb-3">
									<label for="validationServer02">Plan Price</label> <input
										type="text" class="form-control" id="validationServer02"
										placeholder="Plan Price" name="amount" required="">

								</div>



								<div class="col-md-12 mb-3">
									<label for="validationServer02">Description</label>
									<textarea class="form-control" placeholder="Add features.."
										rows="5" name="description"></textarea>

								</div>






							</div>

							<button class="btn btn-primary" type="submit">Add Plan</button>
						</form>
					</div>
				</div>


			</div>
		</div>
		<%@include file="footer.jsp"%>
	</div>