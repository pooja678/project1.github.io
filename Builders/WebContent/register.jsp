<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@page import="javax.validation.ConstraintViolation"%>

<%@page import=" javax.validation.Validation"%>

<%@page import="javax.validation.Validator"%>

<%@page import="javax.validation.ValidatorFactory"%>

<%@page import=" java.util.Set"%>

<%@page import="com.builders.model.Member"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Gym Template">
<meta name="keywords" content="Gym, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Gym</title>


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap"
	rel="stylesheet">
<!-- Css Styles -->
<link rel="stylesheet"
	href="<c:url value="/assets/css/bootstrap.min.css"/>" type="text/css">
<link rel="stylesheet"
	href="<c:url value="/assets/css/font-awesome.min.css"/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value="/assets/css/flaticon.css"/>"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value="/assets/css/owl.carousel.min.css"/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value="/assets/css/barfiller.css"/>"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value="/assets/css/magnific-popup.css"/>" type="text/css">
<link rel="stylesheet"
	href="<c:url value="/assets/css/slicknav.min.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/assets/css/style.css"/>"
	type="text/css">
</head>

<body>
	<%-- ${messages} --%>

	<div class="credentials-Part registerBack">

		<%
			if (request.getAttribute("addMember") == "success") {
		%>
		<div class="card-body">
			<div class="alert alert-success">
				<strong>Success!</strong> You Are Successfully Registered with
				Builders!.
			</div>

			<%
				} else if (request.getAttribute("addMember") == "error") {
			%>
			<div class="alert alert-danger">
				<strong>Error!</strong> You Are Not Successfully Registered with
				Builders!.
			</div>
		</div>

		<%
			}
		%>

		<div class="register-Form joinForm">



			<div class="col-lg-4">
				<div class="innerform">
					<div class="leave-comment text-center register-comment">

						<a href="<c:url value="index.jsp"/>"></a><img
							src="<c:url value="/assets/img/logo.png"/>">
						<form action="MemberRegistration" method="post">
							<div class="input-box">
								<input type="text" placeholder="First Name" class="form-control"
									name="firstName"> <span class="text-danger error">${messages.firstName}</span>
							</div>


							<div class="input-box">
								<input type="text" placeholder="Last Name" class="form-control"
									name="lastName"> <span class="text-danger error">${messages.lastName}</span>
							</div>


							<div class="input-box">
								<input type="text" placeholder="UserName" class="form-control"
									name="userName"> <span class="text-danger error">${messages.userName}</span>
							</div>


							<div class="input-box">
								<input type="text" placeholder="Email" class="form-control"
									name="email"> <span class="text-danger error">${messages.email}</span>
							</div>


							<div class="input-box">
								<input type="number" placeholder="Phone No" class="form-control"
									name="phoneNumber"> <span class="text-danger error">${messages.phoneNumber}</span>
							</div>

							<div class="input-box">
								<input type="number" placeholder="Age" class="form-control"
									name="age"> <span class="text-danger error">${messages.age}</span>
							</div>

							<div class="input-box">
								<input type="password" placeholder="Password"
									class="form-control far fa-eye" xc id="togglePassword"
									name="password"> <span class="text-danger error">${messages.password}</span>
							</div>

							<div class="input-box">
								<input type="password" placeholder="Confirm-Password"
									class="form-control" name="cpassword"> <span
									class="text-danger error">${messages.password}</span>
							</div>

							<button type="submit">Register Here</button>
							<br> <br>

							<p>
								Already have an account ? <a href="<c:url value="login.jsp"/>">Login
									Here</a>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>


	</div>

	<!-- register  Section End -->


	<!-- Js Plugins -->
	<script src="<c:url value="/assets/js/jquery-3.3.1.min.js"/>"></script>
	<script src="<c:url value="/assets/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/jquery.magnific-popup.min.js"/>"></script>
	<script src="<c:url value="/assets/js/masonry.pkgd.min.js"/>"></script>
	<script src="<c:url value="/assets/js/jquery.barfiller.js"/>"></script>
	<script src="<c:url value="/assets/js/jquery.slicknav.js"/>"></script>
	<script src="<c:url value="/assets/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/main.js"/>"></script>



</body>

</html>