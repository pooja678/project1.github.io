<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    
  

    <div class="credentials-Part loginBack">
  
        <div class="login-Form joinForm">
            
            <div class="col-lg-4">
                <div class="innerform">
                    <div class="leave-comment text-center ">

                      <h4 class="text-white mb-4">Please enter your register email id </h4>
                        <form action="ForgotPassword" method="post">
                            
                            <input type="text" name="EMAIL" placeholder="Email" class="form-control">
                            
                           
                        
                            <button type="submit">Submit</button><br><br>

                           
                        </form>
                    </div>
                </div>
            </div>
        </div>


   </div>
    <%@ include file="footer.jsp" %>