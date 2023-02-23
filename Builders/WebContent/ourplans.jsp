<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="header.jsp" %>
    <%@ page import="com.builders.daoImpl.PlanDaoImpl"%>
<%@ page import="com.builders.model.Plans"%>

<%@ page import="com.builders.dao.PlanDao"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%
		PlanDao dao = new PlanDaoImpl();
		List<Plans> planList = dao.getAllPlan();
		if (planList != null) 
	
	%>
	
	<%{ %>
	

 <!-- Pricing Section Begin -->
    <section class="pricing-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Our Plan</span>
                        <h2>Choose your pricing plan</h2>
                    </div>
                </div>
            </div>
           
            <div class="row justify-content-center">
            <c:forEach var="plan" items="<%=planList%>">
                <div class="col-lg-3 col-md-8">
                    <div class="ps-item">
                  
                        <h3>${plan.planName}</h3>
                        <div class="pi-price">
                            <h2> ${plan.amount}</h2>
                            <span>SINGLE CLASS</span>
                        </div>
                        <ul>
                            <li>${plan.planDescription}</li>
                  
                        </ul>
                     
							
                       <%
								if (session.getAttribute("user") != null) {
							%>
							<a href="/Builders/enrollnow.jsp?plan_id=${plan.planId}"
								class="primary-btn pricing-btn">Enroll now</a>
							<%
								} else {
							%>
							<a href="login.jsp" class="primary-btn pricing-btn">Enroll
								now</a>
							<%
								}
							%>
 
                    </div>
                </div>

                </c:forEach>
              
            </div>
          
        </div>
    </section>
    <%} %>
   
</body>



<%@ include file="footer.jsp" %>
</html>