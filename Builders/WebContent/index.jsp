<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="com.builders.daoImpl.PlanDaoImpl"%>
<%@ page import="com.builders.model.Plans"%>

<%@ page import="com.builders.dao.PlanDao"%>
<%@ page import="java.util.List"%>

<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Gym Template">
<meta name="keywords" content="Gym, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Gym</title>


</head>

<body>


	<!-- Hero Section Begin -->
	<section class="hero-section">
		<div class="hs-slider owl-carousel">
			<div class="hs-item set-bg"
				data-setbg="<c:url value="/assets/img/hero/hero-1.jpg"/>">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 offset-lg-6">
							<div class="hi-text">
								<span>Shape your body</span>
								<h1>
									Be <strong>strong</strong> traning hard
								</h1>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg"
				data-setbg="<c:url value="/assets/img/hero/hero-2.jpg"/>">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 offset-lg-6">
							<div class="hi-text">
								<span>Shape your body</span>
								<h1>
									Be <strong>strong</strong> traning hard
								</h1>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- ChoseUs Section Begin -->
	<section class="choseus-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<span>Why chose us?</span>
						<h2>PUSH YOUR LIMITS FORWARD</h2>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="cs-item">
						<span class="flaticon-034-stationary-bike"></span>
						<h4>Modern equipment</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut dolore facilisis.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="cs-item">
						<span class="flaticon-033-juice"></span>
						<h4>Healthy nutrition plan</h4>
						<p>Quis ipsum suspendisse ultrices gravida. Risus commodo
							viverra maecenas accumsan lacus vel facilisis.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="cs-item">
						<span class="flaticon-002-dumbell"></span>
						<h4>Proffesponal training plan</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut dolore facilisis.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="cs-item">
						<span class="flaticon-014-heart-beat"></span>
						<h4>Unique to your needs</h4>
						<p>Quis ipsum suspendisse ultrices gravida. Risus commodo
							viverra maecenas accumsan lacus vel facilisis.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ChoseUs Section End -->


	<!-- Banner Section Begin -->
	<section class="banner-section set-bg"
		data-setbg="<c:url value="/assets/img/banner-bg.jpg"/>">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="bs-text">
						<h2>registration now to get more deals</h2>
						<div class="bt-tips">Where health, beauty and fitness meet.</div>
						<a href="register.jsp" class="primary-btn  btn-normal">Appointment</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Banner Section End -->

	


	
	<!-- Pricing Section End -->

	<!-- Gallery Section Begin -->
	<div class="gallery-section">
		<div class="gallery">
			<div class="grid-sizer"></div>
			<div class="gs-item grid-wide set-bg"
				data-setbg="<c:url value="/assets/img/gallery/gallery-1.jpg"/>">
				<a href="<c:url value="/assets/img/gallery/gallery-1.jpg"/>"
					class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
			</div>
			<div class="gs-item set-bg"
				data-setbg="<c:url value="/assets/img/gallery/gallery-2.jpg"/>">
				<a href="<c:url value="/assets/img/gallery/gallery-2.jpg"/>"
					class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
			</div>
			<div class="gs-item set-bg"
				data-setbg="<c:url value="/assets/img/gallery/gallery-3.jpg"/>">
				<a href="<c:url value="/assets/img/gallery/gallery-3.jpg"/>"
					class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
			</div>
			<div class="gs-item set-bg"
				data-setbg="<c:url value="/assets/img/gallery/gallery-4.jpg"/>">
				<a href="<c:url value="/assets/img/gallery/gallery-4.jpg"/>"
					class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
			</div>
			<div class="gs-item set-bg"
				data-setbg="<c:url value="/assets/img/gallery/gallery-5.jpg"/>">
				<a href="<c:url value="/assets/img/gallery/gallery-5.jpg"/>"
					class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
			</div>
			<div class="gs-item grid-wide set-bg"
				data-setbg="<c:url value="/assets/img/gallery/gallery-6.jpg"/>">
				<a href="<c:url value="/assets/img/gallery/gallery-6.jpg"/>"
					class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
			</div>
		</div>
	</div>
	<!-- Gallery Section End -->

	<!-- Team Section Begin -->
	<section class="team-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="team-title">
						<div class="section-title">
							<span>Our Team</span>
							<h2>TRAIN WITH EXPERTS</h2>
						</div>
						<!-- <a href="#" class="primary-btn btn-normal appoinment-btn">appointment</a> -->
					</div>
				</div>
			</div>
			<div class="row">
				<div class="ts-slider owl-carousel">
					<div class="col-lg-4">
						<a href="trainer-details.html">
							<div class="ts-item set-bg"
								data-setbg="<c:url value="/assets/img/team/team-1.jpg"/>">
								<div class="ts_text">
									<h4>Athart Rachel</h4>
									<span>Gym Trainer</span>
								</div>
							</div>
						</a>
					</div>
					<div class="col-lg-4">
						<a href="trainer-details.html"><div class="ts-item set-bg"
								data-setbg="<c:url value="/assets/img/team/team-2.jpg"/>">
								<div class="ts_text">
									<h4>Athart Rachel</h4>
									<span>Gym Trainer</span>
								</div>
							</div></a>
					</div>
					<div class="col-lg-4">
						<a href="trainer-details.html"><div class="ts-item set-bg"
								data-setbg="<c:url value="/assets/img/team/team-3.jpg"/>">
								<div class="ts_text">
									<h4>Athart Rachel</h4>
									<span>Gym Trainer</span>
								</div>
							</div></a>
					</div>
					<div class="col-lg-4">
						<a href="trainer-details.html">
							<div class="ts-item set-bg"
								data-setbg="<c:url value="/assets/img/team/team-4.jpg"/>">
								<div class="ts_text">
									<h4>Athart Rachel</h4>
									<span>Gym Trainer</span>
								</div>
							</div>
						</a>
					</div>
					<div class="col-lg-4">
						<a href="trainer-details.html"><div class="ts-item set-bg"
								data-setbg="<c:url value="/assets/img/team/team-5.jpg"/>">
								<div class="ts_text">
									<h4>Athart Rachel</h4>
									<span>Gym Trainer</span>
								</div>
							</div></a>
					</div>
					<div class="col-lg-4">
						<a href="trainer-details.html">
							<div class="ts-item set-bg"
								data-setbg="<c:url value="/assets/img/team/team-6.jpg"/>">
								<div class="ts_text">
									<h4>Athart Rachel</h4>
									<span>Gym Trainer</span>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Team Section End -->

	<!-- Testimonial Section Begin -->
	<section class="testimonial-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<span>Testimonial</span>
						<h2>Our cilent say</h2>
					</div>
				</div>
			</div>
			<div class="ts_slider owl-carousel">
				<div class="ts_item">
					<div class="row">
						<div class="col-lg-12 text-center">
							<div class="ti_pic">
								<img
									src="<c:url value="/assets/img/testimonial/testimonial-1.jpg"/>"
									alt="">
							</div>
							<div class="ti_text">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
									eiusmod tempor incididunt<br /> ut labore et dolore magna
									aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo<br />
									viverra maecenas accumsan lacus vel facilisis.
								</p>
								<h5>Marshmello Gomez</h5>
								<div class="tt-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="ts_item">
					<div class="row">
						<div class="col-lg-12 text-center">
							<div class="ti_pic">
								<img
									src="<c:url value="/assets/img/testimonial/testimonial-2.jpg"/>"
									alt="">
							</div>
							<div class="ti_text">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
									eiusmod tempor incididunt<br /> ut labore et dolore magna
									aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo<br />
									viverra maecenas accumsan lacus vel facilisis.
								</p>
								<h5>Marshmello Gomez</h5>
								<div class="tt-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Testimonial Section End -->

	<%@ include file="footer.jsp"%>


</body>

</html>