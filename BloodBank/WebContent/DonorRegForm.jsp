<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  

   <%@include file="homecss.jsp" %>
</head>

<body>
<%@ include file ="userheader.jsp" %>
  <!-- container section start -->
  <section id="contact" class="contact">
      <div class="container">
   <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
       
                <div class="row">
          <div class="col-lg-8">
            <section class="panel">
              <div class="section-title">
              	<h3>REGISTRATION FORM</h3>
              </div>
              <div class="panel-body">
               <form class="form-horizontal " action="DonorReg" method="post" role="form" >
                 <div class="form-group">
                   <label class="control-label col-lg-4" for="inputSuccess">Donor Name</label>
                   <div class="col-lg-8">
                    <input class="form-control m-bot15" type="text" placeholder="Default input" name="donorname" required="required">
                      </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">DOB</label>
                   <div class="col-lg-8">
                    <input class="form-control " type="date" placeholder="Default input" name="dob">
                      </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Gender</label>
                   <div class="col-lg-8">
                   <select class="form-control input-sm " name="gender">
                                              <option value="male">Male</option>
                                              <option value="female">Female</option>
                                          </select>
                      </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Blood Group</label>
                   <div class="col-lg-8">
                   <select class="form-control input-sm " name="blood">
                                              <option value="A+">A+</option>
                                              <option value="A-">A-</option>
                                              <option value="AB+">AB+</option>
                                               <option value="AB-">AB-</option>
                                                <option value="O+">O+</option>
                                                 <option value="O-">O-</option>
                                          </select>
                      </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Weight</label>
                   <div class="col-lg-8">
                    <input class="form-control " type="text" placeholder="Default input" name="weight">
                      </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Address</label>
                   <div class="col-lg-8">
                    <input class="form-control " type="text" placeholder="Default input" name="address">
                      </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Contact</label>
                   <div class="col-lg-8">
                    <input class="form-control " type="text" placeholder="Default input" name="contact">
                      </div>
                   </div>
                   <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button type="submit" class="btn btn-danger">REGISTERS</button>
                    </div>
                  </div>
                </form>
                
              </div>
            </section>
          </div>
    </div>
        <!-- Inline form-->
      </section>
    </section>
    <!--main content end-->
    <div class="text-right">
      <div class="credits">
          <!--
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
          -->
          
        </div>
    </div>
	</div>

   
    

   
  </section>
  <!-- container section end -->
  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>

  <!-- jquery ui -->
  <script src="js/jquery-ui-1.9.2.custom.min.js"></script>

  <!--custom checkbox & radio-->
  <script type="text/javascript" src="js/ga.js"></script>
  <!--custom switch-->
  <script src="js/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="js/jquery.tagsinput.js"></script>

  <!-- colorpicker -->

  <!-- bootstrap-wysiwyg -->
  <script src="js/jquery.hotkeys.js"></script>
  <script src="js/bootstrap-wysiwyg.js"></script>
  <script src="js/bootstrap-wysiwyg-custom.js"></script>
  <script src="js/moment.js"></script>
  <script src="js/bootstrap-colorpicker.js"></script>
  <script src="js/daterangepicker.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <!-- ck editor -->
  <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
  <!-- custom form component script for this page-->
  <script src="js/form-component.js"></script>
  <!-- custome script for all page -->
  <script src="js/scripts.js"></script>


</body>

</html>
