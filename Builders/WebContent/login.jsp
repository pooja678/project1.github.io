<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- register  Section Begin -->


	<div class="credentials-Part loginBack">

		<div class="login-Form joinForm">

			<div class="col-lg-4">
				<div class="innerform">
					<div class="leave-comment text-center ">

						<a href="<c:url value="index.jsp"/>"></a> <img
							src="<c:url value="/assets/img/logo.png"/>">
						<form action="Login" method="post">

							<input type="text" name="EMAIL" placeholder="Email"
								class="form-control"> <input type="password" name="PASS"
								placeholder="Password" class="form-control">


							<button type="submit">Login</button>
							<br>
							<br>

							<p>
								No account yet ? <a href="<c:url value="register.jsp"/>">Register
									Here</a>
							</p>
							<p>
								<a href="<c:url value="forgotpsw.jsp"/>">Forgot Password</a>
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