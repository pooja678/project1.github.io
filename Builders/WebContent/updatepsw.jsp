<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    
  <%
if (request.getAttribute("updatePassword") == "success") {
%>
<div class="card-body">
<div class="alert alert-success">
<strong>Success!</strong> You Password has been Successfully updated!
</div>

<%
} else if (request.getAttribute("updatePassword") == "error") {
%>
<div class="alert alert-danger">
<strong>Error!</strong> You Password has been not Updated!
</div>
</div>

<%
}
%>
  

    <div class="credentials-Part loginBack">
  
        <div class="login-Form joinForm">
            
            <div class="col-lg-4">
                <div class="innerform">
                    <div class="leave-comment text-center ">

                      <h4 class="text-white mb-4">Update password </h4>
                        <form action="UpdatePassword" method="post">
                            
                            <input type="password" name="Npsw" placeholder="New Password" class="form-control">
                            <input type="password" name="Cpsw" placeholder="Confirm Password" class="form-control">
                            
                           
                        
                            <button type="submit">Reset Passsword</button><br><br>

                           
                        </form>
                    </div>
                </div>
            </div>
        </div>


   </div>
    <%@ include file="footer.jsp" %>