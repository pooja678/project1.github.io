<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
	<%@ include file="header.jsp" %>
	
	<%@ page import="com.builders.daoImpl.PlanDaoImpl"%>
<%@ page import="com.builders.model.Plans"%>

<%@ page import="com.builders.dao.PlanDao"%>
<%@ page import="java.util.List"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		if (session.getAttribute("user") == null) {
			response.sendRedirect("/Builders/login.jsp");
		}
		%>
		
	<% 	String planId=request.getParameter("plan_id");
		System.out.println("Plan Id is :-"+planId);
		
		PlanDao dao= new PlanDaoImpl();
	Plans plan=dao.getPlanById(Integer.parseInt(planId));
	request.setAttribute("plan", plan);
	
	System.out.println("Plan is :"+plan);
		
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
		<strong>Error!</strong> Your have not Successfully Subscribed to this Plan!.
	</div>
</div>

<%
	}
%>


	
 
 

    <!-- Contact Section Begin -->
    <section class="contact-section spad sectionTrail">
        <div class="container">
            <div class="row">

                

                <div class="offset-lg-2 col-lg-8 col-md-offset-1 col-md-10 col-sm-12 col-xs-12 rightSection">

                    <div class="innerBox">
                        <div class="text-center">

                            <h2>Payment Details</h2><br>

                           </div>

                           <h4>User Details</h4><br>

                            <div class="leave-comment">
                            <form action="PlaceOrder">
                                <div class="row">
                                <div class="col-md-6">
                                	<input type="hidden" name="plan_id" value="${plan.planId}">
                                   <input type="text" placeholder="Name" value="${user.firstName}">
                               </div>
                               <div class="col-md-6">
                                   <input type="text" placeholder="Username" value="${user.userName }">
                               </div>
                               </div>
                               <input type="text" placeholder="Email" value="${user.email}">
                               <input type="number" placeholder="Phone Number" value="${user.contactNumber }">
                              
                           
                                 <h4>Plan Details</h4><br>

                         
                                <div class="row">
                                <div class="col-md-6">
                                   <input type="text" placeholder="Plan Name"  value="${plan.planName}">
                               </div>
                               <div class="col-md-6">
                                   <input type="text" placeholder="Plan Amount" value="${plan.amount }">
                               </div>
                               </div>
                            
                                 <div class="col-md-6">
                                   <input type="text" placeholder="Plan Details" value="${plan.planDescription}">
                               </div>
                            

                               <h4>Payment Details</h4><br>

                        
                           
                               <input type="text" placeholder="Card Number">
                               

                               
                               <div class="row">
                                <div class="col-md-6">
                                    <input type="text" placeholder="Card CVC">
                                </div>
                                <div class="col-md-3">
                                   <select class="form-control select-drop ">
                                       <option>Month</option>
                                       <option>Jan</option>
                                        <option>Feb</option> 
                                        <option>March</option>
                                         <option>April</option>
                                          <option>May</option>
                                           <option>June</option>
                                            <option>Jul</option>
                                             <option>Aug</option>
                                              <option>Sep</option>
                                               <option>Oct</option>
                                                <option>Nov</option>
                                                 <option>Dec</option>
                                   </select>
                               </div>
                               <div class="col-md-3">

                                   <select class="form-control select-drop">
                                       <option>Year</option>
                                       <option>2021</option>
                                        <option>2022</option>
                                         <option>2023</option>
                                          <option>2024</option>
                                           <option>2025</option>
                                            <option>2026</option>
                                             <option>2027</option>
                                              <option>2028</option>
                                               <option>2029</option>
                                                <option>2030</option>
                                   </select>
                               </div>
                                </div>
                                
                            
                               <button type="submit">Pay Now</button>

                               </form>
                            
                        </div>
                        

                    </div>

                    
                
                </div>
           
            </div>
        </div>
    </section>
    <!-- Contact Section End -->
 <%@include file="footer.jsp" %>
</body>
</html>