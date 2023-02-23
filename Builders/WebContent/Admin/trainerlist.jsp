<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%   
	   	if(session.getAttribute("admin") == null)
	   	{
	  		response.sendRedirect("/Builders/login.jsp");
	  	}
    %>

<div class="wrapper">
		<%@include file="sidebar.jsp"%>
	<div class="page-wrapper">
		<div class="content-wrapper">



			<div class="col-lg-12">
				<div class="card card-default">

					<div class="card-header card-header-border-bottom">
						<h2>Time Table List</h2>
						<a href="<c:url value="/Admin/addtrainer.jsp"/>">
							<button class="btn btn-primary ">
								<i class="fa fa-plus-circle"></i> Add Trainer
							</button>
						</a>
					</div>
					<%
				if (request.getAttribute("deleteTrainer") == "success") {
			%>
			<div class="card-body">
				<div class="alert alert-success">
					<strong>Success!</strong> Trainer Deleted Successfully.
				</div>

				<%
					} else if (request.getAttribute("deleteTrainer") == "error") {
				%>
				<div class="alert alert-danger">
					<strong>Error!</strong>Trainer Not Deleted!!.
				</div>
			</div>

			<%
				}
			%>

						<table class="table table-striped">
							<c:forEach var="i" items="${list}">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First Name</th>
										<th scope="col">Last Name</th>
										<th scope="col">Email</th>
										<th scope="col">Contact Number</th>
										<th scope="col">Gender</th>
										<th scope="col">Address</th>
										<th scope="col">Image</th>
										<th scope="col">Action</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td scope="row">${i.trainerId}</td>
										<td>${i.firstName}</td>
										<td>${i.lastName}</td>
										<td>${i.email}</td>
										<td>${i.contactNumber}</td>
										<td>${i.gender}</td>
										<td>${i.address}</td>
										<td>${i.image}</td>
										<td><a
											href="/Builders/Admin/edittrainer.jsp?update=${i.trainerId}"><i
												class="fa fa-edit"></i></a> <a
											href="/Builders/DeleteTrainer?trainerid=${i.trainerId}"><i
												class="fa fa-trash"></i></a></td>

									</tr>

								</tbody>
							</c:forEach>
						</table>
					</div>
				</div>

			</div>
		</div>
		</div>
		<%@ include file="footer.jsp"%>
	


</body>




</html>