<!DOCTYPE html>
<%@page import="blood.com.controller.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  

  <%@ include file="cssjs.jsp" %>

  
</head>

<body>
  <!-- container section start -->
  
<%@ include file="header.jsp" %>
<%@ include file="sidebar.jsp" %>
   	
	
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-table"></i> Storage</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="home.jsp.html">Home</a></li>
               <!--<li><i class="fa fa-table"></i></li>t-->
            
              <li><i class="fa fa-th-list"></i>Record Added Successfully</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        
       <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                
              </header>

              <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                    <th><i class=""></i>Blood Group</th>
                    <th><i class=""></i>Blood Quantity(In Unit)</th>
                    
                 
                    <th><i class="icon_cogs"></i> Action</th>
                                  </tr>
                                  <% 
			Connection con = Database.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from bloodgroup ");
			while(rs.next())
			{
		%>
                  <tr>
                    
                    <td><%=rs.getString(2) %></td>
                    <td><%=rs.getInt(3) %></td>
                    
                    
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <%} %>
                </tbody>
              </table>
            </section>
          </div>
        </div>
        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
    
 
  <!-- container section end -->
  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nicescroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!--custome script for all page-->
  <script src="js/scripts.js"></script>


</body>

</html>
 