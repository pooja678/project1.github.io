<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
           <%@page import="com.builders.dao.MemberDao" %>
           <%@page import="com.builders.daoImpl.MemberDaoImpl" %>
           <%@page import="com.builders.model.Member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<body style="background-color:#6C7A5E;">
<form action="UpdateMember" method="post">

<%String str = request.getParameter("update");
   System.out.println("update is " + str);

MemberDao dao = new MemberDaoImpl();
 int dataid= Integer.parseInt(str); 
Member member = dao.getMemberById(dataid); 
 %>

<div class="container" style="background-color:#FFE95C;">



<div class="card bg-light" ><center>

<article class="card-body mx-auto" style="max-width:400px;">
	<h4 class="card-title mt-3 text-center">Update Account</h4>

	
	
    
	<form action="UpdateMember" method="post">

	
	
	<Input type="hidden" value=<%=member.getMemberId() %> name="memberId">
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="firstname" class="form-control" placeholder="Enter first name" type="text" value=<%=member.getFirstName() %>>
    </div> <!-- form-group// -->
    
    	<div class="form-group input-group">
    	
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="lastname" class="form-control" placeholder="Enter last name" type="text" value=<%=member.getLastName()%> >
    </div>
    
    <div class="form-group input-group">
    	
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="username" class="form-control" placeholder="Enter user name" type="text"  value=<%=member.getUserName() %>>
    </div>
    
    
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="email" class="form-control" placeholder="Email address" type="email" value=<%=member.getEmail()%>>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
		</div>
		
    	<input name="phone" class="form-control" placeholder="Phone number" type="text" value=<%=member.getContactNumber()%>>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<%
    	System.out.println("contact number is: "+member.getContactNumber());
    	%>
		
	</div> <!-- form-group end.// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" name="passward" placeholder="Enter password" type="password" value=<%=member.getPassword() %>>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		  
		</div>
       
    </div> <!-- form-group// -->                                      
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> Update Account  </button>
    </div> <!-- form-group// -->      
                                                                    
</form>
</article>
</div> 

</div> 
</form>


</body>
</html>