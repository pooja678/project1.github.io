<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
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




    <!-- Contact Section Begin -->
    <section class="contact-section spad sectionTrail">
        <div class="container">
            <div class="row">

                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

                    <div class="innerBox">

                        <h4>Opening Hours</h4><br>
                        <p><i class="fa fa-calendar"></i> Monday to Saturday : 6 AM to 10 PM</p>

                        <hr>

                        <p><b>Gym Type :</b>  Unisex<br>
                        <b>Zone :</b> West</p>

                        <hr>

                        <p><b>Manager Name :</b> lorem Ipsum<br>
                             <b>Manager Contact :</b> 1234567890</p>

                             <hr>

                             <h4>Address</h4><br>

                             <div class="">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12087.069761554938!2d-74.2175599360452!3d40.767139456514954!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c254b5958982c3%3A0xb6ab3931055a2612!2sEast%20Orange%2C%20NJ%2C%20USA!5e0!3m2!1sen!2sbd!4v1581710470843!5m2!1sen!2sbd" height="300" width="100%" style="border:0;"></iframe>
                             </div>

                        
                    </div>

                </div>

                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 rightSection">

                    <div class="innerBox">

                        <h4>Builders Gym Delhi Moti Nagar (West) <a href="<c:url value="/bookTrial.jsp"/>" class="primary-btn btn-normal appoinment-btn fltNone">Book Free Trail</a></h4><br>

                        <p><i class="fa fa-map-marker"></i> Moti Nagar , Main Market, Near Fun Cinemas, Delhi <br>

                        <i class="fa fa-envelope"></i> builders@gmail.com <br>

                        <i class="fa fa-phone"></i> 1234567890<br> </p>

                        <hr>

                        <h4>About Builders</h4><br>

                        <p>t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>

                        <hr>

                        <h4>Facilities</h4>

                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 Facilities">
                                <ul>
                                    <li><img src="<c:url value="/assets/img/cardio.png"/>"> 
                                        <p>CARDIO</p>
                                    </li>
                                    <li><img src="<c:url value="/assets/img/cctv.png"/>">
                                         <p>CCTV</p>
                                    </li>
                                    <li><img src="<c:url value="/assets/img/music.png"/>">
                                        <p>DJ & MUSIC</p>
                                    </li>
                                    <li><img src="<c:url value="/assets/img/nutrition.png"/>">
                                        <p>NUTRITION</p>
                                    </li>
                                    <li><img src="<c:url value="/assets/img/steam.png"/>">
                                        <p>SPA</p>
                                    </li>
                                    <li><img src="<c:url value="/assets/img/wifi.png"/>">
                                        <p>WIFI</p>
                                    </li>

                                </ul>
                            </div>
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

<%@include file="footer.jsp" %>

</body>

</html>