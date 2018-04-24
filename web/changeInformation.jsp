
<%@page import="java.sql.*,resume.sqlconnect"%>

<!DOCTYPE html>

<head>
    <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="assets/css/main.css" />
    <title>Change Profile Information</title>
</head>
<%
    try {
        java.sql.Connection con;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://redroll.com:3306/itresume4u", "itresume4u", "illinoisstate");

        String user = session.getAttribute("userid").toString();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from members WHERE uname='"+user+"'");
        if (rs.next()) {
            String fname = rs.getString("first_name");
            String lname = rs.getString("last_name");
            String users = rs.getString("uname");
            String email = rs.getString("email");
            
            session.setAttribute("fname", fname);
            session.setAttribute("lname", lname);
            session.setAttribute("uname", users);
            session.setAttribute("email", email);
        }

    } catch (SQLException e) {
        out.println("SQL Exception caught: " + e.getMessage());
    }
%>




<body>
    <button id="backBtn" onclick="goBack()">Main Page</button>
    <div class="container">
        <div class="row">
            <div class="col">
                <h1>Edit Profile</h1><br><br>
            </div>
             
            <div class="col">
                <img id="pic" src="http://i39.tinypic.com/14m6xrl.jpg">
                <input type="file" onchange="readURL(this);" name="pic" accept="image/*"><br><br>
            </div>  
        </div>
    </div>    
 
    <div class="container">
    <form action="processProfile.jsp">  
        <h3>Personal info</h3>                    
        <div class="row">
            <div class="col">
                <label>First Name:</label>
                <input type="text" value="<%= session.getAttribute("fname")%>" name="fname"><br>

                <label>Last Name:</label>
                <input type="text" value="<%= session.getAttribute("lname")%>" name="lname"><br>

                <label>Email:</label>
                <input type="text" value="<%= session.getAttribute("email")%>" name="email"><br>

                <input id="infobtn" type="submit"><br><br>
            </div>

            <div class="col">
                <label>Username:</label>
                <input type="text" value="<%= session.getAttribute("uname")%>" name="user"><br>

                <label>Password:</label>
                <input type="password" value="" name="password"><br>

                <label>Confirm Password:</label>
                <input type="password" value="" name="password2"><br> 
            </div>  
        </div>        


    </form>


    </div>            
                
    <script>
        function goBack() {
        window.location.href="success.jsp";
        }
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#pic')
                        .attr('src', e.target.result)
                        .width(200)
                        .height(200);
                };

            reader.readAsDataURL(input.files[0]);
        }
    }

</script>            
</body>

