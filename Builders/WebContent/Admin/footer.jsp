<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<footer class="footer mt-auto">
            <div class="copyright bg-white">
              <p>
                &copy; <span id="copy-year">2022</span> Copyright 
                <a
                  class="text-primary"
                  href="http://www.iamabdus.com/"
                  target="_blank"
                  >Builders</a
                >.
              </p>
            </div>
            <script>
                var d = new Date();
                var year = d.getFullYear();
                document.getElementById("copy-year").innerHTML = year;
            </script>
          </footer>
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCn8TFXGg17HAUcNpkwtxxyT9Io9B_NcM" defer></script>
<script src="<c:url value="/Admin/admin_assets/plugins/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/toaster/toastr.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/slimscrollbar/jquery.slimscroll.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/charts/Chart.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/ladda/spin.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/ladda/ladda.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/jquery-mask-input/jquery.mask.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/select2/js/select2.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/jvectormap/jquery-jvectormap-world-mill.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/daterangepicker/moment.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/daterangepicker/daterangepicker.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/plugins/jekyll-search.min.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/js/sleek.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/js/chart.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/js/date-range.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/js/map.js"/>"></script>
<script src="<c:url value="/Admin/admin_assets/js/custom.js"/>"></script>
