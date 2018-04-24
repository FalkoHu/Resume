package resume;
import java.sql.*;

public class sqlconnect {

    private static String url = "jdbc:mysql://redroll.com:3306/itresume4u";
    private static String username = "itresume4u";
    private static String password = "illinoisstate";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(url, username, password);
    }

}