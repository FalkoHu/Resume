<%@page import="java.sql.*,resume.sqlconnect"%>

<%
    java.sql.Connection con;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://redroll.com:3306/itresume4u", "itresume4u", "illinoisstate");

    session.setAttribute("userid", null);
    session.invalidate();
    response.sendRedirect("index.jsp");
    con.close();
%>