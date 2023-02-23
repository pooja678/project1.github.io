<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       
    <%@page import="com.builders.dao.MemberDao"%>
    <%@page import="com.builders.daoImpl.MemberDaoImpl"%>
    
     <%@page import="com.builders.dao.UserOrderDao"%>
    <%@page import="com.builders.daoImpl.UserOrderDaoImpl"%>
    <%@page import="com.builders.model.BuyDetails"%>
    
    <%@page import=" java.util.List"%>
      <%@page import=" java.util.Arrays"%>
    
    <%@page import=" com.builders.model.Plans"%>
    
    
    <%@page import=" com.builders.dao.PlanDao"%>
    
    <%@page import=" com.builders.daoImpl.PlanDaoImpl"%>
    
     <%@ include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

   
    <style>
    .footer{
    
    padding-left:9rem;
    
    }
    </style>
    
 
 <body class="sidebar-fixed sidebar-dark header-light header-fixed" id="body">
 <%-- 	<%   
	   	if(session.getAttribute("admin") == null)
	   	{
	  		response.sendRedirect("/Builders/login.jsp");
	  	}
    %>
     --%>
    
    
<%if(session.getAttribute("admin")==null)
	{
	
		response.sendRedirect("/Builders/Logout");
	}

System.out.println("@@@@@@@@@@@@"+session.getAttribute("admin"));
%>
    <script>
      NProgress.configure({ showSpinner: false });
      NProgress.start();
    </script>
 

    <div class="mobile-sticky-body-overlay"></div>

    <div class="wrapper">
    
    <%




MemberDao dao=new MemberDaoImpl();
long memberCount=dao.CountTotalMember();
out.println("  TotalCount of Member is:"+memberCount);
request.setAttribute("memberCount",memberCount);


UserOrderDao orderDao=new UserOrderDaoImpl();


long orderCount=orderDao.CountTotalOrders();
out.println("Total Count Of Orders is: "+orderCount);
request.setAttribute("orderCount", orderCount);

BuyDetails details=new BuyDetails();


double orderTotal=orderDao.orderTotal();
System.out.println("order total is :"+orderTotal);
request.setAttribute("orderTotal",orderTotal);



%>
    
      <%@ include file="sidebar.jsp" %>
      
            
                   <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#charts"
                      aria-expanded="false" aria-controls="charts">
                      <i class="mdi mdi-chart-pie"></i>
                      <span class="nav-text">Time Table</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="charts"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="table_list.html">
                                <span class="nav-text">Time Table List</span>
                                
                              </a>
                            </li>
                          
                        

                        
                      </div>
                    </ul>
                  </li>

                  <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#plan"
                      aria-expanded="false" aria-controls="charts">
                      <i class="mdi mdi-chart-pie"></i>
                      <span class="nav-text">Plan</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="plan"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="<c:url value="/Admin/planlist.jsp"/>">
                                <span class="nav-text">Plan List</span>
                                
                              </a>
                            </li>
                          
                        

                        
                      </div>
                    </ul>
                  </li>
                
 <!-- getting join list recent five order details -->
 
<%--  <c:forEach items="${list}" var="item">
    ${item.orderId}
    
   <br>
   ${item.memberName}
</c:forEach> --%>
             
       <!--  list end -->        
              </ul>

            </div>

            <hr class="separator" />

           
          </div>
        </aside>

      

      <div class="page-wrapper">
                  <!-- Header -->
          <header class="main-header " id="header">
            <nav class="navbar navbar-static-top navbar-expand-lg">
              <!-- Sidebar toggle button -->
              <button id="sidebar-toggler" class="sidebar-toggle">
                <span class="sr-only">Toggle navigation</span>
              </button>
              <!-- search form -->
              <div class="search-form d-none d-lg-inline-block">
               
                <div id="search-results-container">
                  <ul id="search-results"></ul>
                </div>
              </div>

              <div class="navbar-right ">
                <ul class="nav navbar-nav">
                  <!-- Github Link Button -->
                 
                  
                  <!-- User Account -->
                  <li class="dropdown user-menu">
                    <button href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                      <img src="admin_assets/img/user/user.png" class="user-image" alt="User Image" />
                      <span class="d-none d-lg-inline-block">Pooja Rathdhaniya</span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right">
                      <!-- User image -->
                      <li class="dropdown-header">
                        <img src="admin_assets/img/user/user.png" class="img-circle" alt="User Image" />
                        <div class="d-inline-block">
                          Pooja Rathdhaniya<small class="pt-1">prathdhaniya@gmail.com</small>
                        </div>
                      </li>

                    

                  

                      <li class="dropdown-footer">
                        <a href="<c:url value="/Logout"/>"> <i class="mdi mdi-logout"></i> Log Out </a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </nav>


          </header>


        <div class="content-wrapper">
          <div class="content">						 
                  <!-- Top Statistics -->
                  <div class="row">
                  
                  <div class="col-xl-4 col-sm-4">
                      <div class="card card-mini mb-4">
                        <div class="card-body">
                          <h2 class="mb-1">${memberCount}</h2>
                          <p>Total Clients</p>
                          <div class="chartjs-wrapper">
                            <canvas id="area-chart"></canvas>
                          </div>
                        </div>
                      </div>
                    </div>
                   
                    <div class="col-xl-4 col-sm-4">
                      <div class="card card-mini  mb-4">
                        <div class="card-body">
                          <h2 class="mb-1">${orderCount}</h2>
                          <p>Total Orders</p>
                          <div class="chartjs-wrapper">
                            <canvas id="dual-line"></canvas>
                          </div>
                        </div>
                      </div>
                    </div>
                    
          
                    <div class="col-xl-4 col-sm-4">
                      <div class="card card-mini mb-4">
                        <div class="card-body">
                          <h2 class="mb-1">${orderTotal}</h2>
                          <p>Total Orders Amount</p>
                          <div class="chartjs-wrapper">
                            <canvas id="line"></canvas>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>


						
					

						<div class="row">
							<div class="col-12"> 
                  <!-- Recent Order Table -->

                  <div class="card card-table-border-none" id="recent-orders">
                  
                    <div class="card-header justify-content-between">
                      <h2>Recent Orders</h2>
                   
                    </div>
                    
                    
                    
                    <div class="card-body pt-0 pb-5">
                    
                      <table class="table card-table table-responsive table-responsive-large" style="width:100%">
                        <thead>
                          <tr>
                            <th>Order ID</th>
                            <th>Customer  Name</th>
                            <th class="d-none d-md-table-cell">Purchasing Date</th>
                            <th class="d-none d-md-table-cell">Plan Name</th>
                            <th class="d-none d-md-table-cell">Plan Cost</th>
                            
                           
                          </tr>
                        </thead>
                        <tbody>
                                  <%      
List<Object[]> list=orderDao. getRecentFiveOrders();


for(Object []arr:list)
{
	
System.out.println("JOIN TABLE OUTPUT IS :"+list.get(0));

request.setAttribute("list", list);
                 
%>  
                          <tr>
                            <td ><%=arr[0] %></td>
                            <td >
                              <a class="text-dark" href=""><%=arr[1] %></a>
                            </td>
                            <td class="d-none d-md-table-cell"><%=arr[2] %></td>
                            <td class="d-none d-md-table-cell"><%=arr[3] %></td>
                            <td class="d-none d-md-table-cell"><%=arr[4] %></td>
                          
                             <td class="d-none d-md-table-cell"></td>
                          </tr>
                       <%} %> 
                        </tbody>
                      </table>
                      
             
                    
                    </div>
                  </div>
               
                  
                  
</div>
						</div>

					

			
</div>

          


        </div>
        
        
        </div>
       
        
         <%@ include file="footer.jsp" %>
        </body>
        </html>

