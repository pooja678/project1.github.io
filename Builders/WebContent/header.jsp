


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%@page import="com.builders.model.Member" %>
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
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap" rel="stylesheet">
    <!-- Css Styles -->
    <link rel="stylesheet" href="<c:url value="/assets/css/bootstrap.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/font-awesome.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/flaticon.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/owl.carousel.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/barfiller.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/magnific-popup.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/slicknav.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/style.css"/>" type="text/css">
</head>

<body>

<%
HttpSession s=request.getSession();
Member member=null;
if(s.getAttribute("user")!=null){
	member=(Member)s.getAttribute("user");
System.out.println("Logged in user is :-"+member.getEmail());
}
else 
{
	if(s.getAttribute("admin")!=null)
	{
		member=(Member)s.getAttribute("user");
		System.out.println("Logged in user is :-"+member.getEmail());
	}
}


%>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Section Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="canvas-close">
            <i class="fa fa-close"></i>
        </div>
        <div class="canvas-search search-switch">
            <i class="fa fa-search"></i>
        </div>
        <nav class="canvas-menu mobile-menu">
            <ul>
                          <li><a href="#">Get Started <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown">
                                
                                <li><a href="<c:url value="/gallery.jsp"/>">Gallery</a></li>
                                 <li><a href="<c:url value="/classTimeTable.jsp"/>">Time Table</a></li>
                               
                              
                            </ul>
                          </li>
                      
                          <li><a href="<c:url value="/index.jsp"/>">Home</a></li>
                          <li><a href="<c:url value="/aboutUs.jsp"/>" >About Us</a></li>
                          <li><a href="<c:url value="/ourplans.jsp"/>">Our Plans</a></li>
                          <li><a href="<c:url value="/contact.jsp"/>">Contact</a></li>
                          <li><a href="<c:url value="/freeTrial.jsp"/>">Free Trail</a></li>
                          <li><a href="<c:url value="/register.jsp"/>">Join Now</a></li>

                        </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="canvas-social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-youtube-play"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
        </div>
    </div>
    <!-- Offcanvas Menu Section End -->

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <div class="logo">
                        <a href="<c:url value="/index.jsp"/>">
                            <img src="<c:url value="/assets/img/logo.png"/>" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-9">
                    <nav class="nav-menu navbar-right">
                        <ul>
                          <li><a href="#">Get Started <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown">
                             
                                <li><a href="<c:url value="/gallery.jsp"/>">Gallery</a></li>
                                  <li><a href="<c:url value="/classTimeTable.jsp"/>">Time Table</a></li>
                               
                
                            </ul>
                          </li>
                          <li><a href="<c:url value="/index.jsp"/>">Home</a></li>
                          <li><a href="<c:url value="/aboutUs.jsp"/>">About Us</a></li>
                          <li><a href="<c:url value="/ourplans.jsp"/>">Our Plans</a></li>
                          <li><a href="<c:url value="/contact.jsp"/>">Contact</a></li>
                          <li><a href="<c:url value="/freeTrial.jsp"/>" class="primary-btn">Free Trail</a></li>
                          <li><a href="<c:url value="/register.jsp"/>" class="primary-btn">Join Now</a></li>
                           <li class="loginBtnss"><a href="#"><i class="fa fa-user-circle"></i></a>
                            <ul class="dropdown">
                                
                                <li><a href="<c:url value="/myProfile.jsp"/>">My Profile</a></li>
                                
                                
                            <% if(member==null) 
                            {
                                out.print("<li><a href=\"login.jsp\">Login</a></li>");
                            }
                            
                                 else
                                 {
                                out.print("<li><a href=\"Logout\"/>Logout</a></li>");
                                 }
                                
                                %>
                            </ul>
                          </li>
                        </ul>
                    </nav>
                </div>
                
            </div>
            <div class="canvas-open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header End -->
 