<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="header.jsp"%>

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
					<h2>Member List</h2>
				</div>

				<table class="table table-striped">
					<c:forEach var="member" items="${list}">
						<thead>
							<tr>
								<th scope="col">Member Id</th>
								<th scope="col">First Name</th>
								<th scope="col">Last Name</th>
								<th scope="col">Email</th>
								<th scope="col">Contact Number</th>
								<th scope="col">User Name</th>

								<th scope="col">Age</th>
								<th scope="col">Password</th>


							</tr>
						</thead>
						<tbody>
							<tr>
								<td scope="row">${member.memberId}</td>
								<td>${member.firstName}</td>
								<td>${member.lastName}</td>
								<td>${member.email}</td>
								<td>${member.contactNumber}</td>
								<td>${member.userName}</td>
								<td>${member.age}</td>
								<td>${member.password}</td>
						</tbody>



					</c:forEach>
				</table>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>


</div>



