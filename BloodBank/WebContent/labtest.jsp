<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="blood.com.controller.Database"%>
<%@page import="java.sql.Connection"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  

  <%@ include file ="cssjs.jsp" %>
</head>

<body>

  <!-- container section start -->
  <section id="container" class="">
    <!--header start-->
    <%@include file="header.jsp" %>
	
    <!--sidebar start-->
    <%@include file="sidebar.jsp" %>

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
       
                <div class="row">
          <div class="col-lg-10">
            <section class="panel">
              <header class="panel-heading">
                Lab Test
              </header>
              <div class="panel-body">
       <div class="form-group">
 <div class="col-lg-12">
<table class="table table-striped table-advance table-hover">
                   		<tbody>
                   				<tr>
                        				 <tr>
                    <th><i class="icon_profile"></i> Full Name</th>
                    <th><i class=""></i> HIV Test</th>
                    <th><i class=""></i> Malaria</th>
                    <th><i class=""></i>Date Of Test </th>
                    <th><i class=""></i> Blood Group</th>
                    <th><i class=""></i> Action</th>
                  </tr>
                   				
                   		</tbody>
                   </table>
                   </div>
                   </div>
		<% 
			Connection con = Database.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select *from donorreg");
			while(rs.next())
			{
				if(rs.getInt(9)==0){
		%>
	<form action="Labtest" method="post">
	
			<input type ="hidden" name ="donor_id" value="<%=rs.getString(1)%>">
	<div class="form-group">
                   <div class="col-lg-12">
                   <table class="table table-striped table-advance table-hover">
                   		<tbody>
                   				<tr>
                   				
                   				<td><input class="form-control " type="text" placeholder="Default input" name="fullname"  disabled="disabled" value="<%=rs.getString(2)%>"></td>
                   				 <td> <select class="form-control input-sm " name="hivtest">
                                              <option value="negative">Negative</option>
                                                <option value="postive">Positive</option>
                                          </select></td>
                   				<td> <select class="form-control input-sm " name="malaria">
                                              <option value="negative">Negative</option>
                                                <option value="postive">Positive</option>
                                          </select></td>
                   				<td><input class="form-control " type="date" placeholder="Default input" name="dateoftest"></td>
                   				<td><input class="form-control " type="text"  name="bloodgroup" value="<%=rs.getString(6)%>" ></td>
                   				<td>
                      <div class="btn-group">
                      <button type="submit" class="btn btn-primary"><i class="icon_plus_alt2"></i></button>
                        
                      </div>
                    </td>
                   				</tr>
                   		</tbody>
                   </table>
                   
                   </div>
       </div>
                   
	</form>
	
	<%} }%>
                
                
              </div>
            </section>
          </div>
    </div>
        <!-- Inline form-->
        
      </section>
    </section>
    <!--main content end-->
    <div class="text-right">
      
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
