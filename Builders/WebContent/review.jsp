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
    <title>Gym | Template</title>


</head>

<body>


    <section class="breadcrumb-section set-bg" data-setbg="<c:url value="/assets/img/breadcrumb-bg.jpg"/>">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>Contact Us</h2>
                        <div class="bt-option">
                            <a href="<c:url value="/index.html"/>">Home</a>
                            <a href="#">Pages</a>
                            <span>Contact us</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Contact Section Begin -->
    <section class="contact-section spad sectionTrail">
        <div class="container">
            <div class="row">

                

                <div class="offset-lg-2 col-lg-8 col-md-offset-1 col-md-10 col-sm-12 col-xs-12 rightSection">

                    <div class="innerBox">
                        <div class="text-center">

                            <h2>Free Trial Gym Request</h2><br>

                            <p>Builders Gym offers you a one day free trail of your choice, so that you can experience state of the art facilities and amenities, advanced workout equipment and certified personal trainers. </p>
                        </div>

                        <div class="leave-comment">
                            <form action="#">
                               <input type="text" placeholder="Name">
                               <input type="text" placeholder="Email">
                               <input type="number" placeholder="Phone Number">
                               <input type="date">
                            
                               <button type="submit">Join Now</button>
                            </form>
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