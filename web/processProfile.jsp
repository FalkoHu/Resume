

<%@page import="java.sql.*,resume.sqlconnect"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            try {
                java.sql.Connection con;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://redroll.com:3306/itresume4u", "itresume4u", "illinoisstate");

                String user = session.getAttribute("userid").toString();

                String userid = request.getParameter("user");
                String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String email = request.getParameter("email");
                String pass = request.getParameter("password").toString();
                String pass2 = request.getParameter("password2").toString();

                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from members WHERE uname='" + user + "' and pass='" + pass + "'");
                if (rs.next()) {
                    if (pass.equals(pass2)) {
                        st.execute("UPDATE members SET first_name='" + fname + "', last_name='" + lname + "', email='" + email + "', uname='" + userid + "' WHERE uname='" + user + "'");
                        session.setAttribute("userid", userid);
                        response.sendRedirect("changeInformation.jsp");
                    } 
                    else {%>
                        <script>
                                alert("Password Does Not Match");
                                window.location.href="changeInformation.jsp";
                        </script>
                    <%}
                } 
                else {%>
                        <script>
                                alert("Wrong Password");
                                window.location.href="changeInformation.jsp";
                        </script>
                <%}

            } catch (SQLException e) {
                out.println("SQL Exception caught: " + e.getMessage());
            }
        %>    
    </body>
</html>
