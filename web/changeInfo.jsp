<%@page import="java.sql.*,resume.sqlconnect"%>
<% Connection con = sqlconnect.getConnection(); %>

<!DOCTYPE html>
<html>
    <head>
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
      <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    
    <body>    
        
        <%
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select fname, lname, email FROM createdResumes");
            out.println(rs);
            %>
            
        <form action="/action_page.php">
  
        <div class="container" style="padding-top: 60px;">
            <h1 class="page-header">Edit Profile</h1>
            <div class="row">
                    <!-- left column -->
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="text-center">
                        <img src="" class="avatar img-circle img-thumbnail">
                        <h6>Upload a photo...</h6>
                        <input type="file" class="text-center center-block well well-sm" accept="image/*">
                    </div>
                    <input type="submit">    
                </div>
                </form>        

                <!-- edit form column -->
                <div class="col-md-8 col-sm-6 col-xs-12 personal-info">

                    <h3>Personal info</h3>
                    <form action>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">First name:</label>
                            <div class="col-lg-8">
                                <input class="form-control" value="" name ="acctFirst" type="text">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Last name:</label>
                            <div class="col-lg-8">
                                <input class="form-control" value="" name ="acctLast" type="text">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Email:</label>
                            <div class="col-lg-8">
                                <input class="form-control" value="" name ="acctEmail" type="text">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-md-3 control-label">Username:</label>
                            <div class="col-md-8">
                                <input class="form-control" value="" name ="acctUser" type="text">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-md-3 control-label">Password:</label>
                            <div class="col-md-8">
                                <input class="form-control" value="" name ="acctPass" type="password">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-md-3 control-label">Confirm password:</label>
                            <div class="col-md-8">
                                <input class="form-control" value="" name ="acctConfirm" type="password">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-md-3 control-label"></label>
                            <div class="col-md-8">
                                <input class="btn btn-primary" value="Save Changes" type="button">
                                <span></span>
                                <input class="btn btn-default" value="Cancel" type="reset">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>