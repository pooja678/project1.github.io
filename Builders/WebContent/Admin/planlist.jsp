<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>

<%
	if (session.getAttribute("admin") == null) {
		response.sendRedirect("/Builders/login.jsp");
	}
%>



	<%@include file="sidebar.jsp"%>

<div class="page-wrapper">
	<div class="content-wrapper">

		<div class="col-lg-12">
			<div class="card card-default">

				<div class="card-header card-header-border-bottom">
					<h2>Plan List</h2>
					<a href="<c:url value="/Admin/addplan.jsp"/>">
						<button class="btn btn-primary ">
							<i class="fa fa-plus-circle"></i> Add Plan
						</button>
					</a>
				</div>
			<%
				if (request.getAttribute("deletePlan") == "success") {
			%>
			<div class="card-body">
				<div class="alert alert-success">
					<strong>Success!</strong> Plan Deleted Successfully.
				</div>

				<%
					} else if (request.getAttribute("deletePlan") == "error") {
				%>
				<div class="alert alert-danger">
					<strong>Error!</strong>Plan not Deleted!.
				</div>
			</div>

			<%
				}
			%>

					<table class="table table-striped">
						<c:forEach var="i" items="${planlist}">
							<thead>
								<tr>
									<th scope="col">Plan Id</th>
									<th scope="col">Plan Name</th>
									<th scope="col">Plan Amount</th>
									<th scope="col">Plan Description</th>
									<th scope="col">Action</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td scope="row">${i.planId}</td>
									<td>${i.planName}</td>
									<td>${i.amount}</td>
									<td>${i.planDescription}</td>
									<td><a
										href="/Builders/Admin/editplan.jsp?update=${i.planId}"><i
											class="fa fa-edit"></i></a> <a
										href="/Builders/DeletePlan?planid=${i.planId}"><i
											class="fa fa-trash"></i></a></td>
							</tbody>



						</c:forEach>
					</table>
				</div>
			</div>
			<%@ include file="footer.jsp"%>
		</div>


	</div>





