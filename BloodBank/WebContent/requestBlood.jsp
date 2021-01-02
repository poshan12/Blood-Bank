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
<section id="" class="d-flex align-items-center">
    <div class="container">
     
    </div>
  </section>
<main id ="main">
  <!-- container section start -->
  	<div class="container ">
        <div class="section-title">
          <h2>Patient Detail</h2>
                  </div>
                  <div class="row mt-5">
                 <div class="col-lg-12 mt-5 mt-lg-0">

            <form action="PatientRequest" method="post" role="form" >
              <div class="form-row">
                <div class="col-lg-6 form-group">
                <label>Patient Name</label>
                  <input type="text" name="pname" class="form-control" id="pname"  data-rule="minlen:4"  />
                  <div class="validate"></div>
                </div>
                
                <div class="col-lg-6 form-group">
                <label>Gender</label>
                 <select name="gender" id="gender" class="form-control">
                <option value="0">Male</option>
                <option value="1">Female</option>
                </select>
              </div>
              </div>
             <div class="form-row">
                <div class="col-md-6 form-group">
                <label>Doctor Name</label>
                  <input type="text" name="doctorname" class="form-control" id="name"  />
                  <div class="validate"></div>
                </div>
                <div class="col-md-6 form-group">
                <label>Hospital Name</label>
                  <input type="text" name="hosname" class="form-control" id="name"  />
                  <div class="validate"></div>
                </div>
              </div>
              <div class="form-row">
                <div class="col-md-6 form-group">
                <label>Contact</label>
                  <input type="text" name="contact" class="form-control" id="name"  />
                  <div class="validate"></div>
                </div>
                <div class="col-md-6 form-group">
                <label>Email-Id</label>
                  <input type="text" name="email" class="form-control" id="name"  />
                  <div class="validate"></div>
                </div>
              </div>
              
              <div class="form-row">
           <div class="col-md-4 form-group">
           <label>Blood Group</label>
              <select name="bloodgroup" id="department" class="form-control">
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
              </select>
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group">
            <label>District</label>
              <select name="district" id="district" class="form-control">
                <option value="">Select District</option>
                <option value="Raipur">Raipur</option>
                <option value="Durg">Durg</option>
                <option value="Balod">Balod</option>
              </select>
              <div class="validate"></div>
            </div>
            
            <div class="col-md-4 form-group">
            <label>Location</label>
                    <input type="text" name="location" class="form-control" id="name" />
               <div class="validate"></div>
            </div>
          </div>
          <div class="form-row">
                <div class="col-md-4 form-group">
                <label>Date When Need</label>
                    <input class="form-control " type="date" placeholder="Default input" name="datewhen">
                  <div class="validate"></div>
                </div>
                <div class="col-md-4 form-group">
                <label>Priority</label>
				<select name="priority" id="priority" class="form-control">
                <option value="normal">normal</option>
                <option value="early">early</option>
                </select>                 
                </div>
              </div>
              <div class="mb-3">
              <% if(request.getAttribute("res")==null) 
            	  out.print("pleae reenter");
              else
            	  out.print("success");
              %>
                <div class="loading">success</div>
                
              </div>
              <div class="text-center"><button type="submit" class="btn btn-danger">Send Message</button></div>
            </form>

          </div>
                 
                  
                  </div>
                  
      </div>
</main>
</body>

</html>
