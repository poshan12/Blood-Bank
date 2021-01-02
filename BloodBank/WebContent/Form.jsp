<!DOCTYPE html>
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
        <form class="form-horizontal " method="get">
                  <div class="form-group">
                    <label class="control-label col-lg-2" for="inputSuccess">Control sizing huh hhkj df dfkj</label>
                    <div class="col-lg-10">
                      <input class="form-control input-lg m-bot15" type="text" placeholder=".input-lg">
                      <input class="form-control m-bot15" type="text" placeholder="Default input">
                      <input class="form-control input-sm m-bot15" type="text" placeholder=".input-sm">

                      <select class="form-control input-lg m-bot15">
                                              <option>Option 1</option>
                                              <option>Option 2</option>
                                              <option>Option 3</option>
                                          </select>
                      <select class="form-control m-bot15">
                                              <option>Option 1</option>
                                              <option>Option 2</option>
                                              <option>Option 3</option>
                                          </select>
                      <select class="form-control input-sm m-bot15">
                                              <option>Option 1</option>
                                              <option>Option 2</option>
                                              <option>Option 3</option>
                                          </select>
                    </div>
                  </div>
                </form>
                
                <div class="row">
          <div class="col-lg-6">
            <section class="panel">
              <header class="panel-heading">
                Basic Forms
              </header>
              <div class="panel-body">
               <form class="form-horizontal " method="get" role="form">
               
                 
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Controlf dklfj djfk sizing</label>
                   <div class="col-lg-10">
                    <input class="form-control m-bot15" type="text" placeholder="Default input">
                      </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Controlf dklfj djfk sizing</label>
                   <div class="col-lg-8">
                    <input class="form-control m-bot15" type="text" placeholder="Default input">
                      </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Controlf dklfj djfk sizing</label>
                   <div class="col-lg-8">
                    <input class="form-control m-bot15" type="text" placeholder="Default input">
                      </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Controlf dklfj djfk sizing</label>
                   <div class="col-lg-8">
                    <input class="form-control " type="text" placeholder="Default input">
                      </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-lg-2" for="inputSuccess">Controlf dklfj djfk sizing</label>
                   <div class="col-lg-8">
                   <select class="form-control input-sm ">
                                              <option>Option 1</option>
                                              <option>Option 2</option>
                                              <option>Option 3</option>
                                          </select>
                      </div>
                   </div>
                    <div class="form-group">
                    <label for="inputEmail1" class="col-lg-2 control-label">Email dfkj djkf</label>
                    <div class="col-lg-10">
                      <input type="email" class="form-control" id="inputEmail1" placeholder="Email">
                      <p class="help-block">Example block-level help text here.</p>
                    </div>
                  </div>
                </form>
                
              </div>
            </section>
          </div>
          <div class="col-lg-6">
            <section class="panel">
              <header class="panel-heading">
                Horizontal Forms
              </header>
              <div class="panel-body">
                <form class="form-horizontal" role="form">
                  <div class="form-group">
                    <label for="inputEmail1" class="col-lg-2 control-label">Email dfjkl dfkl</label>
                    <div class="col-lg-10">
                      <input type="email" class="form-control" id="inputEmail1" placeholder="Email">
                      <p class="help-block">Example block-level help text here.</p>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword1" class="col-lg-2 control-label">Password</label>
                    <div class="col-lg-10">
                      <input type="password" class="form-control" id="inputPassword1" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <div class="checkbox">
                        <label>
                                                  <input type="checkbox"> Remember me
                                              </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button type="submit" class="btn btn-danger">Sign in</button>
                    </div>
                  </div>
                </form>
              </div>
            </section>
            <section class="panel">

              <div class="panel-body">
                <a href="#myModal" data-toggle="modal" class="btn btn-primary">
                                  Form in Modal
                              </a>
                <a href="#myModal-1" data-toggle="modal" class="btn  btn-warning">
                                  Form in Modal 2
                              </a>
                <a href="#myModal-2" data-toggle="modal" class="btn  btn-danger">
                                  Form in Modal 3
                              </a>

                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">�</button>
                        <h4 class="modal-title">Form Tittle</h4>
                      </div>
                      <div class="modal-body">

                        <form role="form">
                          <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Enter email">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputFile">File input</label>
                            <input type="file" id="exampleInputFile3">
                            <p class="help-block">Example block-level help text here.</p>
                          </div>
                          <div class="checkbox">
                            <label>
                                                          <input type="checkbox"> Check me out
                                                      </label>
                          </div>
                          <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-1" class="modal fade">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">�</button>
                        <h4 class="modal-title">Form Tittle</h4>
                      </div>
                      <div class="modal-body">

                        <form class="form-horizontal" role="form">
                          <div class="form-group">
                            <label for="inputEmail1" class="col-lg-2 control-label">Email</label>
                            <div class="col-lg-10">
                              <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="inputPassword1" class="col-lg-2 control-label">Password</label>
                            <div class="col-lg-10">
                              <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <div class="checkbox">
                                <label>
                                                                  <input type="checkbox"> Remember me
                                                              </label>
                              </div>
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button type="submit" class="btn btn-info">Sign in</button>
                            </div>
                          </div>
                        </form>

                      </div>

                    </div>
                  </div>
                </div>
                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-2" class="modal fade">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">�</button>
                        <h4 class="modal-title">Form Tittle</h4>
                      </div>
                      <div class="modal-body">
                        <form class="form-inline" role="form">
                          <div class="form-group">
                            <label class="sr-only" for="exampleInputEmail2">Email address</label>
                            <input type="email" class="form-control sm-input" id="exampleInputEmail5" placeholder="Enter email">
                          </div>
                          <div class="form-group">
                            <label class="sr-only" for="exampleInputPassword2">Password</label>
                            <input type="password" class="form-control sm-input" id="exampleInputPassword5" placeholder="Password">
                          </div>
                          <div class="checkbox">
                            <label>
                                                          <input type="checkbox"> Remember me
                                                      </label>
                          </div>
                          <button type="submit" class="btn btn-success">Sign in</button>
                        </form>

                      </div>

                    </div>
                  </div>
                </div>
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
