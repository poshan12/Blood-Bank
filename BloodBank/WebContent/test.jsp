<%-- 
    Document   : chKBookAvailibility
    Created on : Nov 30, 2020, 9:53:27 AM
    Author     : Preet
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css"/>
    <title>Library</title>
  </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div id="header">
                        <img src="photos/book3.png" class="d-none d-sm-block img img-responsive">
                        <h1 class="sitename d-block" style="background-color:#336699;">Library System</h1>
                        
                        <a class="btn btn-success" style="float:right;margin:10px" href="index.jsp">Home</a>
                    </div>
            </div>
        </div>
        <div class="d-flex justify-content-center">      
        <div class="col-md-7">
                <form name="chkBookForm" action="chKBookAvailibility.jsp" method="POST">
                    <div class="form-group">
                        <label class="d-block bg-info mt-3" style="color:#fff;text-align:center;">Select Book From</label>
                        <select class="form-control" id="showCategory" name="showCategory">
                            
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="d-block bg-info mt-3" style="color:#fff;text-align:center;">Select Book Category</label>
                        <select class="form-control" id="showSubCat" name="showSubCat">
                            
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label class="d-block bg-info mt-3" style="color:#fff;text-align:center;">Select Book</label>
                        <select class="form-control" id="showBooks" name="showBooks">
                                           
                        </select>
                    </div>
                    
                    <center>
                    <button type="button" id="btnFetch" name="btnFetch" class="btn btn btn-success">Fetch Data</button>
                    </center>
                    <h4 class="d-block bg-info mt-3" style="text-align:center;">Details of book</h4>
                    
                    <div class="panel-body">
                        <table class="table table-bordered" cellspacing="0" cellpadding="0" width="100%">
                            <thead>
                                <tr>
                                    <th>BOOK ID</th>
                                    <th>BOOK NAME</th>
                                    <th>AUTHOR</th>
                                    <th>PUBLISHER</th>
                                    <th>QUANTITY</th>
                                    <th>ISSUED</th>
                                    <th>ADDED ON</th>
                                    <th></th>
                                </tr>
                            </thead>
                          <tbody id="tblBooks">
                            <!-- <tr > -->

                            <!-- </tr> -->
                          </tbody>
                        </table>
                    </div>
                </form>
             
        </div>
       </div>
                
<!-- Issue Book Modal -->

<div class="modal fade" id="modalIssue" style="display:none" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Issue Book</h5>
        
      </div>
      <div class="modal-body">
        <form class="form-horizontal" id="issue_form" method="POST">
            <div class="modal-body">
                <div class="form-group">
                                <label class="d-block bg-info mt-3" style="color:#fff;text-align:center;">Select User Type</label>
                                <select class="form-control" id="optType" name="optType">
                                                  
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="d-block bg-info mt-3" style="color:#fff;text-align:center;">Select Department</label>
                                <select class="form-control" id="optDept"  name="optDept">
                                                       
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="d-block bg-info mt-3" style="color:#fff;text-align:center;">Select Branch</label>
                                <select class="form-control" id="optBranch" name="optBranch">
                                            
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="d-block bg-info mt-3" style="color:#fff;text-align:center;">Select Student</label>
                                <select class="form-control"  id="optUser" name="optUser">
                                                 
                                </select>
                            </div>
<!--                            <center>
                            <button type="button" id="btnFetch" onclick="getUser();" name="btnFetch" class="btn btn btn-success">Fetch Data</button>
                            </center>-->
                       <div class="">
                       <p class="bg-light" style="text-align:center;color:brown">---OR Search By---</p>
                       <label class="">Enter Student Name/ID/ENROLLMENT No. </label>
                           <input type="text" class="form-control" id="u_id" name="u_id" placeholder="Enter here">
                       </div>
               </div>
            </div>
                    <div class="alert alert-danger modalAlert" style="display:none">
                        
                        
                    </div>
               <div class="modal-footer">
                   <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i>Close</button>
                   <button type="submit" class="btn btn-success btn-flat" id="Issue" name="Issue"><i class="fa fa-check-square-o"></i>Issue it</button>
               </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Issue Book Modal -->

<!--  Book Detail Modal -->
<div class="modal fade" id="modalDetail" style="display:none" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Details of Book Issuer</h5>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" id="book_detail_form" method="POST">
            <div class="modal-body">
                <div class="panel-body">
                        <table class="table table-bordered" cellspacing="0" cellpadding="0" width="100%">
                            <thead>
                                <tr>
                                    <th>User ID</th>
                                    <th>User Type</th>
                                    <th>Name</th>
                                    <th>Issue Date</th>
                                </tr>
                            </thead>
                          <tbody id="tblViewDetails">
                            <!-- <tr > -->
                            <!-- </tr> -->
                          </tbody>
                        </table>
                    </div>
               <div class="form-group">
                    <div class="alert alert-danger modalDetailAlert" style="display:none"></div>
               </div>
            </div>
               <div class="modal-footer">
                   <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i>Close</button>
               </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!--  Book Detail Modal -->


<script src="component/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="component/jquery/jquery.min.js" type="text/javascript"></script>
<script src="component/jquery.validate.min.js" type="text/javascript"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
                    $(document).ready(function()
                    {
                        LoadCategory();
                        LoadUsrType();
                        LoadDepartment(); 
                    });
                    
                    $('#u_id').keyup(function()
                    {
                        chkStatus();
                    });
                    
                    function LoadCategory()
                    {
                        var operation_type="getCat";
                        $.ajax({
                            url:"showDetails.jsp",
                            type:"POST",
                            data:{"operation_type":operation_type},
                            success:function(data)
                            {
                                var obj= JSON.parse(data);
                                var html = '<option value="">No Selected</option>';
                                var i;
                                for(i=0; i<obj.length; i++)
                                {
                                   
                                    html += '<option value='+obj[i].catid+'>'+obj[i].catname+'</option>';
                                    
                                }
                                $('#showCategory').html(html);
                            }
                        });
                    }
                    
                    
                    $(document).ready(function()
                    {
                         $('#showCategory').change(function()
                         {
                            var operation_type="getSubCategory";
                            var me="getWithCatID";
                            var catid=$(this).val();
//                            alert(catid);
                            $.ajax({
                                url : "showDetails.jsp",
                                method : "POST",
                                data : {"catid":catid,"operation_type":operation_type,"getSubCatOnly":me},
                                success: function(data)
                                {
                                   var obj=JSON.parse(data);
                                   var html = '<option value="">No Selected</option>';
                                   var i;
                                   for(i=0; i<obj.length; i++)
                                   {
                                    html += '<option value='+obj[i].sCatid+'>'+obj[i].sCatname+'</option>';
                                   }
                                   $('#showSubCat').html(html);
                                }
                            });
                            return false;
                           });
                    });
                    
                     $(document).ready(function()
                    {
                         $('#showSubCat').change(function()
                         {
                            var withVar="subCatID";
                            var operation_type="getBooks";
                            var fromPage="pageChkAvailablity";
                            var SubCatid=$(this).val();
                            var catID=$('#showCategory').val();
//                            alert(catid);
                            $.ajax({
                                url : "showDetails.jsp",
                                method : "POST",
                                data : {"SubCatid":SubCatid,"withVar":withVar,"operation_type":operation_type,"fromPage":fromPage},
//                                dataType : "JSON",
                                success: function(data)
                                {
                                   var obj=JSON.parse(data);
                                   var html = '<option value="">No Selected</option>';
                                   var i;
                                   for(i=0; i<obj.length; i++)
                                   {
                                    html += '<option value='+obj[i].bid+'>'+obj[i].bName+'</option>';
                                   }
                                   $('#showBooks').html(html);
                                }
                            });
                            return false;
                           });
                    });
                                    
//                    function FetchBook()
//                    {
                     $(document).ready(function()
                     {
                         var withVar="allBook";
                            $('#btnFetch').click(function()
                            {
                               withVar="bookid";

//                    }         var operation_type="getBooks";
                            var fromPage="pageChkAvailablity";
                            var bid=$('#showBooks').val();
                            var SubCatid=$('#showSubCat').val();
                            var catID=$('#showCategory').val()
                            
                            $.ajax({
                                url : "showDetails.jsp",
                                method : "POST",
                                data : {"bid":bid,"withVar":withVar, "SubCatid":SubCatid,"catID":catID,"operation_type":operation_type,"fromPage":fromPage},
                                success: function(data)
                                {
                                   var obj=JSON.parse(data);
                                   var html = '';
                                   var i;
                                   var uType=obj[0].uType;
                                   for(i=0; i<obj.length; i++)
                                   {
                                        var is=parseInt(obj[i].issued);
                                        var qn=parseInt(obj[i].bQuantity);
                                        var flag=qn-is;
                                         
                                                if(flag==0)
                                                {
                                                    if(uType=="admin")
                                                    {
                                                        html += '<tr><td>'+obj[i].bid+'</td><td>'+obj[i].bName+'</td><td>'+obj[i].bAuthor+'</td><td>'+obj[i].bPublisher+'</td><td>'+obj[i].bQuantity+'</td><td><a href="#"></a>'+obj[i].issued+'</td><td>'+obj[i].adate+'</td><td><a onclick="getBook('+obj[i].bid+');" href="#modalDetail" data-toggle="modal" id="btnDetail" class="btn btn-warning" data="'+obj[i].bid+'">Details</a></td></tr>';
                                                    }
                                                    if(uType=="user")
                                                    {
                                                         html += '<tr><td>'+obj[i].bid+'</td><td>'+obj[i].bName+'</td><td>'+obj[i].bAuthor+'</td><td>'+obj[i].bPublisher+'</td><td>'+obj[i].bQuantity+'</td><td><a href="#"></a>'+obj[i].issued+'</td><td>'+obj[i].adate+'</td><td><a onclick="getBook('+obj[i].bid+');" href="#modalDetail" data-toggle="modal" id="btnDetail" class="btn btn-warning" data="'+obj[i].bid+'" disabled>Details</a></td></tr>';
                                                    }
                                                   
                                                }
                                                else
                                                {
                                                    if(uType=="admin")
                                                    {
                                                        html += '<tr><td>'+obj[i].bid+'</td><td>'+obj[i].bName+'</td><td>'+obj[i].bAuthor+'</td><td>'+obj[i].bPublisher+'</td><td>'+obj[i].bQuantity+'</td><td><a href="#"></a>'+obj[i].issued+'</td><td>'+obj[i].adate+'</td><td><a onclick="issueNow('+obj[i].bid+');" href="#modalIssue" data-toggle="modal"  class="btn btn-info btnIss" id="btnIssue" data="'+obj[i].bid+'">Issue Now</a></td></tr>';
                                                    }
                                                    else
                                                    {
                                                    html += '<tr><td>'+obj[i].bid+'</td><td>'+obj[i].bName+'</td><td>'+obj[i].bAuthor+'</td><td>'+obj[i].bPublisher+'</td><td>'+obj[i].bQuantity+'</td><td><a href="#"></a>'+obj[i].issued+'</td><td>'+obj[i].adate+'</td><td><label class="bg-info">Available</label></td></tr>';    
                                                    }
                                                    
                                                }
                                                               

                                   }
                                   $('#tblBooks').html(html);
                                }
                            });
                            });
                            var operation_type="getBooks";
                            var fromPage="pageChkAvailablity";
                            var bid=$('#showBooks').val();
                            var SubCatid=$('#showSubCat').val();
                            var catID=$('#showCategory').val()
                            
                            $.ajax({
                                url : "showDetails.jsp",
                                method : "POST",
                                data : {"bid":bid,"withVar":withVar, "SubCatid":SubCatid,"catID":catID,"operation_type":operation_type,"fromPage":fromPage},
                                success: function(data)
                                {
                                   var obj=JSON.parse(data);
                                   var html = '';
                                   var i;
                                   var uType=obj[0].uType;
                                   for(i=0; i<obj.length; i++)
                                   {
                                        var is=parseInt(obj[i].issued);
                                        var qn=parseInt(obj[i].bQuantity);
                                        var flag=qn-is;
                                        if(flag==0)
                                        {
                                            if(uType=="admin")
                                            {
                                               html += '<tr><td>'+obj[i].bid+'</td><td>'+obj[i].bName+'</td><td>'+obj[i].bAuthor+'</td><td>'+obj[i].bPublisher+'</td><td>'+obj[i].bQuantity+'</td><td><a href="#"></a>'+obj[i].issued+'</td><td>'+obj[i].adate+'</td><td><a onclick="getBook('+obj[i].bid+');" href="#modalDetail" data-toggle="modal"  class="btn btn-warning" data="'+obj[i].bid+'">Details</a></td></tr>';
                                            }
                                            if(uType=="user")
                                            {
                                               html += '<tr><td>'+obj[i].bid+'</td><td>'+obj[i].bName+'</td><td>'+obj[i].bAuthor+'</td><td>'+obj[i].bPublisher+'</td><td>'+obj[i].bQuantity+'</td><td><a href="#"></a>'+obj[i].issued+'</td><td>'+obj[i].adate+'</td><td><a onclick="getBook('+obj[i].bid+');" href="#modalDetail" data-toggle="modal"  class="btn btn-warning" data="'+obj[i].bid+'" disabled>Details (Not Available)</a></td></tr>';
                                            }
                                        }
                                        else
                                        {
                                            if(uType=="admin")
                                            {
                                                html += '<tr><td>'+obj[i].bid+'</td><td>'+obj[i].bName+'</td><td>'+obj[i].bAuthor+'</td><td>'+obj[i].bPublisher+'</td><td>'+obj[i].bQuantity+'</td><td><a href="#"></a>'+obj[i].issued+'</td><td>'+obj[i].adate+'</td><td><a onclick="issueNow('+obj[i].bid+');" href="#modalIssue" data-toggle="modal" id="btnIssue"  class="btn btn-info btnIss" data="'+obj[i].bid+'">Issue Now</a></td></tr>';
                                            }
                                            if(uType=="user")
                                            {
                                                html += '<tr><td>'+obj[i].bid+'</td><td>'+obj[i].bName+'</td><td>'+obj[i].bAuthor+'</td><td>'+obj[i].bPublisher+'</td><td>'+obj[i].bQuantity+'</td><td><a href="#"></a>'+obj[i].issued+'</td><td>'+obj[i].adate+'</td><td><label class="alert alert-info d-block">Available For Issue</label></td></tr>';
                                            }
                                            
                                        }
                                     
                                   }
                                   $('#tblBooks').html(html);
                                }
                            });
                    });
                    
                    function getBook(id)
                    {
                            var operation_type="getBookIssuer";
                            var bid=id;
//                            alert(bid);
                            if(bid=="")
                            {
                                alert("please enter book!!");
                            }
                            else
                            {
                                $.ajax({
                                url:"showDetails.jsp",
                                method:"POST",
                                data:{"bid":bid,"operation_type":operation_type},
                                success:function(data)
                                {
                                    var obj=JSON.parse(data);
                                    var html = '';
                                    var i;
                                    if(obj[0]===null)
                                    {
                                        $('.modalDetailAlert').html("Book details fetching error !").fadeIn().delay(4000).fadeOut('slow');
                                    }
                                    else
                                    {
                                        for(i=0; i<obj.length; i++)
                                        {
                                            html += '<tr><td>'+obj[i].uid+'</td><td>'+obj[i].utype+'</td><td>'+obj[i].uname+'</td><td>'+obj[i].issuedate+'</td></tr>';
                                        }
                                        $('#tblViewDetails').html(html);
                                    }                                    
                                },
                                error:function()
                                {
                                    alert('Error');
                                    $('.modalDetailAlert').html('failed').fadeIn().delay(4000).fadeOut('slow');
                                }
                                });
                            }
                    }
                    
                    var gbook_id=null;
                    function issueNow(id)
                    {
                        gbook_id=id;
                        return gbook_id;
                    }
                    
                   var usr_id=null;
                   var usrid=null;
                   $('#issue_form').on('submit',function(e)
                    {
                        var sid=null;
                        var bookid=gbook_id;
                        usrid=$('#u_id').val();
                        usr_id=$('#optUser').val();
//                        alert(usr_id);
                        if(usr_id==null && usrid!="")
                        {
                            sid=usrid;
//                             alert(sid);
//                            alert("please select user!!");
                        }
                        e.preventDefault();
                        if(usrid=="" && usr_id!=null)
                        {
                            sid=usr_id;
//                            alert(sid);
//                            alert("please enter user!!");
                        }
                       
                        $.ajax({
                        url:'issueBook.jsp',
                        method:'POST',
                        data:{"sid":sid,"bid":bookid},
                        success:function(response)
                            {
                                var obj= JSON.parse(response);
                                if(obj[0]===null)
                                {
                                    $('.modalAlert').html("Book already issued !").fadeIn().delay(4000).fadeOut('slow');
                                }
                                else
                                {
//                                      $('#issueModal').modal('hide');
                                    $('.modalAlert').html("Book successfully issued").fadeIn().delay(4000).fadeOut('slow');
                                }
                              },
                            error:function(){
                                alert('Error');
                                $('.modalAlert').html('failed').fadeIn().delay(4000).fadeOut('slow');
                            }
                         });
                       });
     
                    
                     function LoadUsrType()
                    {
                        var operation_type="getUsrType";
                        $.ajax({
                            url:"showDetails.jsp",
                            type:"POST",
                            data:{"operation_type":operation_type},
                            success:function(data)
                            {
                                var obj= JSON.parse(data);
                                var html = '<option value="">No Selected</option>';
                                var i;
                                for(i=0; i<obj.length; i++)
                                {
                                    html += '<option value='+obj[i].usr_cat_id+'>'+obj[i].usr_type+'</option>';
                                }
                                $('#optType').html(html);
                            }
                        });
                    }
                    
                    function LoadDepartment()
                    {
                        var operation_type="getDepartment";
                        $.ajax({
                            url:"showDetails.jsp",
                            type:"POST",
                            data:{"operation_type":operation_type},
                            success:function(data)
                            {
                                var obj=JSON.parse(data);
                                var html = '<option value="">No Selected</option>';
                                var i;
                                for(i=0; i<obj.length; i++)
                                {
                                    html += '<option value='+obj[i].dept_id+'>'+obj[i].dept_name+'</option>';
                                }
                                $('#optDept').html(html);
                            }
                        });
                    }
                    
                    
                     $(document).ready(function()
                    {
                         $('#optDept').change(function()
                         {
                            var operation_type="getBranch";
                            var withVar="deptID";
                            var deptid=$(this).val();
                            $.ajax({
                                url : "showDetails.jsp",
                                method : "POST",
                                data : {"deptid":deptid,"operation_type":operation_type,"withVar":withVar},
                                success: function(data)
                                {
                                   var obj=JSON.parse(data);
                                   var html = '<option value="">No Selected</option>';
                                   var i;
                                   for(i=0; i<obj.length; i++)
                                   {
                                    html += '<option value='+obj[i].branch_id+'>'+obj[i].branch_name+'</option>';
                                   }
                                   $('#optBranch').html(html);
                                }
                            });
                            return false;
                           });
                    });
                    
                    
                    
                    $(document).ready(function()
                    {
                         $('#optBranch').change(function()
                         {
                            var operation_type="getUser";
                            var withVar="branchWise";
                            var branchid=$(this).val();
                            $.ajax({
                                url : "showDetails.jsp",
                                method : "POST",
                                data : {"branch_id":branchid,"operation_type":operation_type,"withVar":withVar},
                                success: function(data)
                                {
                                   var obj=JSON.parse(data);
                                   var html = '<option value="">No Selected</option>';
                                   var i;
                                   for(i=0; i<obj.length; i++)
                                   {
                                    html += '<option value='+obj[i].usr_id+'>'+obj[i].name+'</option>';
                                   }
                                   $('#optUser').html(html);
                                }
                            });
                            return false;
                           });
                    });
                    
                   
                    
                    function chkStatus()
                    {
                        var book_id=gbook_id;
//                        alert(book_id);
                        var operation_type="chkStatus";
                        var usrid=$('#u_id').val();
//                        alert(usrid);
                            $.ajax({
                                url :"showDetails.jsp",
                                method :"POST",
                                data :{"operation_type":operation_type,"usr_id":usrid,"book_id":book_id},
                                success:function(data)
                                {
                                    var obj=JSON.parse(data);
                                    var res=obj[0].chkEligibility;
                                    var msg=obj[0].msg;
                                        if(res==false)
                                        {
                                            $('.modalAlert').html(msg).fadeIn().delay(2000).fadeOut('slow');
                                            document.getElementById("Issue").disabled = true; 
                                        }
                                        else
                                        {
                                            $('.modalAlert').html(msg).fadeIn().delay(2000).fadeOut('slow');
                                            document.getElementById("Issue").disabled = false; 
                                        }
                                },
                                error:function()
                                {
                                    $('.modalAlert').html("User not found!").fadeIn().delay(2000).fadeOut('slow');
                                }
                            });
                    }
                    
                    $(document).ready(function()
                    {
                         $('#optUser').change(function()
                         {
                           var operation_type="chkStatus";
                            var withVar="branchWise";
                            var branch=$('#optBranch').val();
//                            var book_id=$('#btnIssue').attr('data');
                             var book_id=gbook_id;
//                             alert(book_id);
                            var usrid=$(this).val();
                            $.ajax({
                                url : "showDetails.jsp",
                                method : "POST",
                                data : {"usr_id":usrid,"book_id":book_id,"branch_id":branch,"operation_type":operation_type,"withVar":withVar},
                                success: function(data)
                                {
                                    var obj=JSON.parse(data);
                                    var res=obj[0].chkEligibility;
                                    var msg=obj[0].msg;
                                        if(res==false)
                                        {
                                            $('.modalAlert').html(msg).fadeIn().delay(2000).fadeOut('slow');
                                            document.getElementById("Issue").disabled = true; 
                                        }
                                        else
                                        {
                                            $('.modalAlert').html(msg).fadeIn().delay(2000).fadeOut('slow');
                                            document.getElementById("Issue").disabled = false; 
                                        }
                                },
                                error:function()
                                {
                                    $('.modalAlert').html("failed").fadeIn().delay(2000).fadeOut('slow');
                                }
                            });
                            return false;
                         });
                    });
        </script>
 
</body>
</html>

 
   