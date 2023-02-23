<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/flaticon.css" type="text/css">
 
    <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    
  
    <style>
        .modal-header{
            display:unset;
        }
        #profile-modal img{
            width: 100%;
            padding: 0 15px 0 15px;
            object-fit: cover;
            border-radius: 50%;
        }
        #profile-modal .modal-dialog {
            max-width: 380px;
            
        }
        #profile-modal .modal-footer button{
                padding: 10px 30px 10px;
                margin-top: 0;
        }
        #profile-modal .modal-footer button:hover{
            color: #fff;
            

        }
         #profile-modal .modal-footer {
           
            border-top: none !Important;

        }
        #profile-modal label{
            padding: 10px;
            margin-top: 0;

        }
        #profile-modal label:hover{

            color: #fff;
        }

        #profile-modal input[type="file"] {
            display: none;
        }
         #profile-modal .modal-footer{
            justify-content: space-between;
         }
    </style>
</head>

<body>
    <!-- Page Preloder -->
  <%--  
/Builders/DeletePlan?planid=${i.planId}" --%>
	
		
  <!-- Modal -->
  <div class="modal fade" id="profile-modal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Change profile picture</h4>
        </div>
        <div class="modal-body profile_img" id="image" >
          
        </div>
        <div class="modal-footer">
   
   <a href="/Builders/UpdateProfile?memberid=${user.memberId}"><label class="primary-btn btn-normal appoinment-btn fltNone"><i class="fa fa-edit"></i> Change
            </label>
          </a>
          <button type="button" class="primary-btn btn-normal appoinment-btn fltNone" data-dismiss="modal"><i class="fa fa-trash"></i> Remove</button>
        </div>
      </div>
      
    </div>
  </div>
  


    <!-- Js Plugins -->
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
<script>


document.getElementById("image").innerHTML=localStorage.getItem("profileImage");

</script>



</body>

</html>