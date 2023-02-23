<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@include file="header.jsp"%>
<%@page import="com.builders.model.Member"%>
<%@page import="com.builders.model.BuyDetails"%>
<%@page import="com.builders.dao.UserOrderDao"%>
<%@page import="com.builders.daoImpl.UserOrderDaoImpl"%>
<%@page import="com.builders.dao.PlanDao"%>
<%@page import="com.builders.daoImpl.PlanDaoImpl"%>
<%@page import="com.builders.model.Plans"%>
<%@page import="java.time.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>


	<%
		if (session.getAttribute("user") == null) {
			response.sendRedirect("/Builders/login.jsp");
		}
	 
		%>
		

<%
	if (request.getAttribute("addOrder") == "success") {
%>
<div class="card-body">
	<div class="alert alert-success">
		<strong>Success!</strong> You have Successfully Subscribed to the
		Plan!.
	</div>

	<%
		} else if (request.getAttribute("addOrder") == "error") {
	%>
	<div class="alert alert-danger">
		<strong>Error!</strong> Your Subscription to the Plan has Not expired
		Yet!.
	</div>
</div>

<%
	}
%>

<%
		int planId1 = 0;

		Integer planId = new Integer(planId1);


		if (session.getAttribute("user") != null) {
			Member m1 = (Member) session.getAttribute("user");
			int memberId = m1.getMemberId();

			System.out.println("new file Member Id is :" + memberId);
			BuyDetails buydetails = new BuyDetails();
			UserOrderDao orderDao = new UserOrderDaoImpl();

			if(planId!=null ){
				planId = orderDao.getPlanIdByMemberId(memberId);

				System.out.println("new file Plan Id is :" + planId);
				
if(planId!=null){
				PlanDao planDao = new PlanDaoImpl();
				Plans plan = planDao.getPlanById(planId);

				System.out.println("new file plan is :" + plan);
				request.setAttribute("plan", plan);

				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/MM/yyyy");
				String date = orderDao.getOrderDateByPlanId(planId);
				LocalDate localDate = LocalDate.parse(date, formatter);

				LocalDate date2 = localDate.plusDays(30);
				request.setAttribute("date", formatter.format(date2));
				System.out.println(formatter.format(date2));
				
		}
	%>



<!-- Contact Section Begin -->
<section class="contact-section spad sectionTrail">
	<div class="container">
		<div class="row">


			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 rightSection">

				<div class="innerBox">


					<div class="row">
						<div class="col-lg-2 col-md-3 col-sm-12 col-xs-12">
							<div class="profile_img" >
								<p id="profileImage"></p>
								<i
									class="fa fa-camera pic_cam" data-toggle="modal"
									data-target="#profile-modal"></i>
							</div>
						</div>
						<div class="col-lg-10 col-md-9 col-sm-12 col-xs-12">
							<div class="user_details">


								<h4 id="firstName">${user.firstName}</h4>

								<p>
									<b>Email : </b><span>${user.email }</span>
								</p>
								
								<p>
									<b>UserName : </b><span>${user.userName }</span>
								</p>
								
								<p>
									<b>LastName : </b><span id="lastName">${user.lastName }</span>
							
								</p>
								<p>
									<b>Phone no : </b><span>${user.contactNumber}</span>
								</p>
								<p>
									<b>Age : </b><span>${user.age}</span>
								</p>
								
								</form>
							</div>
					
						</div>
					
					


					</div>
				
					<hr>
					
					
				
				<%
	
						
			
						if (planId!=null) {
					%>
				
					 	
					 	<div class="row">
						<div class="col-md-12 col-sm-12 plan_Details">
							<h4>
								Package Details <a href="<c:url value="/ourplans.jsp"/>"
									class="primary-btn btn-normal appoinment-btn fltNone">Renew
									Date &nbsp; ${date}</a>
							</h4>
							<p>
								<b>Plan Name : </b><span>${plan.planName }</span>
							</p>
							<p>
								<b>Plan Price : </b><span>&#8377;${plan.amount}</span>
							</p>
							<p>
								<b>Facilities Provided : </b><span>${plan.planDescription}</span>
							</p>
							<hr>
 
							<%
								}}}
							%>


						</div>
					 	
					 
					
				</div>

			</div>

		</div>

	</div>
	</div>

</section>
<!-- Contact Section End -->



<!-- Search model Begin -->
<div class="search-model">
	<div class="h-100 d-flex align-items-center justify-content-center">
		<div class="search-close-switch">+</div>
		<form class="search-model-form">
			<input type="text" id="search-input" placeholder="Search here.....">
		</form>
	</div>
</div>
<!-- Search model end -->

<script>


$(document).ready(function(){
	  var firstName = $('#firstName').text();
	  var lastName = $('#lastName').text();
	  var initials = $('#firstName').text().charAt(0) + $('#lastName').text().charAt(0);
	  var profileImage = $('#profileImage').text(initials);
	  localStorage.setItem("profileImage",initials);
	});




</script>

<%@include file="profile_popup.jsp"%>
<%@include file="footer.jsp"%>

