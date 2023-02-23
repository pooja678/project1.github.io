<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>




<%@page import="com.builders.dao.PlanDao"%>
<%@page import="com.builders.daoImpl.PlanDaoImpl"%>
<%@page import="com.builders.model.Plans"%>


<%
	if (session.getAttribute("admin") == null) {
		response.sendRedirect("/Builders/login.jsp");
	}
%>
<%
	String id = request.getParameter("update");
	int planId = Integer.parseInt(id.trim());
	System.out.println("plan id is:-" + planId);
	PlanDao dao = new PlanDaoImpl();
	Plans plan = dao.getPlanById(planId);
%>
<%
	if (request.getAttribute("updatePlan") == "success") {
%>
<div class="card-body">
	<div class="alert alert-success">
		<strong>Success!</strong> Plan Updated Successfully.
	</div>

	<%
		} else if (request.getAttribute("updatePlan") == "error") {
	%>
	<div class="alert alert-danger">
		<strong>Error!</strong>Plan Not Updated Successfully!!.
	</div>
</div>

<%
	}
%>



<%@ include file="sidebar.jsp"%>


<%
	System.out.println("PLAN ID IS =" + plan.getPlanId());
%>

<div class="page-wrapper">
	<div class="content-wrapper">

		<div class="col-md-4 mb-3">
			<label for="validationServer02"></label> <input type="hidden"
				class="form-control" id="validationServer02"
				value=<%=plan.getPlanId()%> placeholder="Plan Name" name="planid">

		</div>

		<div class="col-lg-12">
			<div class="card card-default">
				<div class="card-header card-header-border-bottom">
					<h2>Edit Plan</h2>
				</div>
				<div class="card-body">
					<form action="/Builders/UpdatePlan" method="post">
						<div class="form-row">





							<div class="col-md-4 mb-3">
								<label for="validationServer02">Plan Name</label> <input
									type="text" class="form-control" id="validationServer02"
									value=<%=plan.getPlanName()%> placeholder="Plan Name"
									name="planname" required>

							</div>

							<div class="col-md-4 mb-3">
								<label for="validationServer02">Plan Price</label> <input
									type="text" class="form-control" id="validationServer02"
									value=<%=plan.getAmount()%> placeholder="Plan Price"
									name="amount" required>

							</div>


							<div class="col-md-12 mb-3">
								<label for="validationServer02">Description</label>
								<textarea class="form-control" name="description"
									value=<%=plan.getPlanDescription()%> rows="5"></textarea>

							</div>

							<%
								System.out.println("plan description is:-" + plan.getPlanDescription());
							%>




						</div>

						<button class="btn btn-primary" type="submit">Update Plan</button>
					</form>
				</div>
			</div>


		</div>
	</div>
	<%@include file="footer.jsp"%>
</div>



</body>


</html>