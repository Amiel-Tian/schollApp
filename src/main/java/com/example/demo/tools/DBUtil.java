package com.example.demo.tools;

import java.sql.*;

public class DBUtil {
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        /*
        *
        *加载驱动，连接数据库
        * */
        Class.forName("com.mysql.jdbc.Driver");

        String url="jdbc:mysql://localhost:3306/appsoftware";
        String name="root";
        String pass="329471";

        return DriverManager.getConnection(url,name,pass);
    }

    public void close(Connection con, Statement sta, ResultSet rs){
        if (con != null) {
            try {
                con.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                con = null;
            }
        }if (sta != null) {
            try {
                sta.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                sta = null;
            }
        }if (rs != null) {
            try {
                rs.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                rs = null;
            }
        }
    }
    public void close(Connection con, Statement sta, PreparedStatement rs){
        if (con != null) {
            try {
                con.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                con = null;
            }
        }if (sta != null) {
            try {
                sta.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                sta = null;
            }
        }if (rs != null) {
            try {
                rs.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                rs = null;
            }
        }
    }
}
