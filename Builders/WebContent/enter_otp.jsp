<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>



<div class="credentials-Part loginBack">

	<div class="login-Form joinForm">

		<div class="col-lg-4">
			<div class="innerform">
				<div class="leave-comment text-center ">
					<%
						if (request.getAttribute("message") != null) {
							out.print("<p class='text-danger ml-1'>" + request.getAttribute("message") + "</p>");
						}
					%>


					<h4 class="text-white mb-4">Please enter otp sent to your
						Email!!</h4>
					<form action="ValidateOtp" method="post">

						<input type="text" name="otp" placeholder="Otp"
							class="form-control">



						<button type="submit">Enter Otp</button>
						<br>
						<br>


					</form>
				</div>
			</div>
		</div>
	</div>


</div>
<%@ include file="footer.jsp"%>