<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
	<%   
	   	if(session.getAttribute("admin") == null)
	   	{
	  		response.sendRedirect("/Builders/login.jsp");
	  	}
    %>

 
	<%@include file="sidebar.jsp"%>
 
   <div class="page-wrapper">
       <div class="content-wrapper">

<div class="col-lg-12">
                  <div class="card card-default">
                  
                    <div class="card-header card-header-border-bottom">
                      <h2>Schedule List</h2>
                     <a href="<c:url value="/Admin/addschedule.jsp"/>"> <button class="btn btn-primary "><i class="fa fa-plus-circle"></i> Add Schedule</button></a>
                    </div>
	<%
				if (request.getAttribute("deleteSchedule") == "success") {
			%>
			<div class="card-body">
				<div class="alert alert-success">
					<strong>Success!</strong> Schedule Deleted Successfully.
				</div>

				<%
					} else if (request.getAttribute("deleteSchedule") == "error") {
				%>
				<div class="alert alert-danger">
					<strong>Error!</strong>Schedule Not Deleted Successfully.
				</div>
			</div>

			<%
				}
			%>

                      <table class="table table-striped">
                      <c:forEach var="i" items="${list}">
                        <thead>
                          <tr>
                            <th scope="col">Schedule Id</th>
                            <th scope="col">Day</th>
                             <th scope="col">time</th>
                           
                              <th scope="col">Action</th>
                           
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td scope="row">${i.scheduleId}</td>
                             <td>${i.scheduleName}</td>
                                <td>${i.day}</td>
                                <td>${i.time}</td>
                               
                            <td> <a href="/Builders/Admin/editschedule.jsp?update=${i.scheduleId}"><i class="fa fa-edit"></i></a>
                             <a href="/Builders/DeleteSchedule?scheduleid=${i.scheduleId}"><i class="fa fa-trash"></i></a></td>
                         
                         
                        </tbody>
                        
                        
                                       
</c:forEach>
                      </table>
                    </div>
                  </div>
     <%@ include file="footer.jsp" %>
                </div>
        
             
</div>
</div>



   
 
 
 