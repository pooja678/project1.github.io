<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
       
      <%--  <%@ include file="header.jsp" %> --%>



 
 <aside class="left-sidebar bg-sidebar">
          <div id="sidebar" class="sidebar sidebar-with-footer">
            <!-- Aplication Brand -->
            <div class="app-brand">
              <a href="<c:url value="/Admin/home.jsp"/>">
               <img src="<c:url value="/Admin/admin_assets/img/logo.png"/>">
              </a>
            </div>
            <!-- begin sidebar scrollbar -->
            <div class="sidebar-scrollbar">

              <!-- sidebar menu -->
              <ul class="nav sidebar-inner" id="sidebar-menu">
                

                
                  <li  class="has-sub active " >
                    <a class="sidenav-item-link" href="<c:url value="/Admin/home.jsp"/>">
                      <i class="mdi mdi-view-dashboard-outline"></i>
                      <span class="nav-text">Dashboard</span>
                    </a>
                   
                  </li>

                   <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#charts"
                      aria-expanded="false" aria-controls="charts">
                      <i class="mdi mdi-chart-pie"></i>
                      <span class="nav-text">Schedule</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="charts"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                         <li >
                              <a class="sidenav-item-link" href="<c:url value="/AllScheduleList"/>">
                                <span class="nav-text">Schedule List</span>
                                </a>
                                </li>
                          
                                
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
                              <a class="sidenav-item-link" href="<c:url value="/AllPlanList"/>">
                                <span class="nav-text">Plan List</span>
                                
                              </a>
                              
                             </li>
                        

                        
                      </div>
                    </ul>
                  </li>
                
                
                    <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#member"
                      aria-expanded="false" aria-controls="charts">
                      <i class="mdi mdi-chart-pie"></i>
                      <span class="nav-text">Member</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="member"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="<c:url value="/AllMemberList"/>">
                                <span class="nav-text">Member List</span>
                                
                              </a>
                              
                         
                            </li>
                              
                      </div>
                    </ul>
                  </li>
                            
                            
                          
                        

                      
                             
        <!-- TRAINER -->   
                    <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#trainer"
                      aria-expanded="false" aria-controls="charts">
                      <i class="mdi mdi-chart-pie"></i>
                      <span class="nav-text">Trainer</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="trainer"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                          <li>
                              <a class="sidenav-item-link" href="<c:url value="/AllTrainerList"/>">
                                <span class="nav-text">Trainer List</span>
                                    </a>
                           <%--    <a class="sidenav-item-link" href="<c:url value="/Admin/edittrainer.jsp"/>">
                                <span class="nav-text">Edit Trainer</span>
                                 </a> --%>
                                 </li>
                               
                      </div>
                    </ul>
                  </li>
                           
                      
                              
                             
                        
                        

                
                
                

                

                
              </ul>

            </div>

            <hr class="separator" />

           
          </div>
        </aside>
 