<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file ="cssjs.jsp" %>
</head>
<body>
<%@include file ="header.jsp" %>
<%@include file ="sidebar.jsp" %>


<section id="main-content">
      <section class="wrapper">
        <%

		out.print(request.getAttribute("donorid"));
        out.print(request.getAttribute("bloodgroup"));

%>
                <div class="row">
          <div class="col-lg-6">
            <section class="panel">
              <header class="panel-heading">
                Stock
              </header>
              <div class="panel-body">
               <form class="form-horizontal " action="StockAdd" method="post" role="form " >
               
                 
                 
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">ID</label>
                   <div class="col-lg-8">
                    <input class="form-control m-bot15" type="text" placeholder="Default input" name="donorid" value=<%=request.getAttribute("donorid") %>>
                      </div>
                   </div>
                   
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Taken Date</label>
                   <div class="col-lg-8">
                    <input class="form-control " type="date"  name="takendate">
                      </div>
                   </div>
                   
                   
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Quantity</label>
                   <div class="col-lg-8">
                    <input class="form-control " type="text" placeholder="Quntity" name="quantity">
                      </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Blood Group</label>
                   <div class="col-lg-8">
                    <input class="form-control " type="text" placeholder="Default input" name="bloodgroup" value=<%=request.getAttribute("bloodgroup") %>>
                      </div>
                   </div>
                   
                   <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button type="submit" class="btn btn-primary">ADD</button>
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