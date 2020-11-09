package com.example.demo.dao;

import com.example.demo.bean.Admin;
import com.example.demo.bean.User;
import com.example.demo.tools.DBUtil;

import java.sql.*;
import java.util.ArrayList;

public class AdminDao {
    DBUtil dbUtil = new DBUtil();
    /*获取所有用户*/
    public ArrayList getAdmins(){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        Admin user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from admins ;";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new Admin(rs.getInt("id"),rs.getString("user"),rs.getString("pass"),rs.getInt("power"));
                arr.add(user);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            dbUtil.close(con,sta,rs);
        }
        return arr;
    }
    /*搜索用户*/
    public ArrayList searchAdmin(String type,String value){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        Admin user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from admins where "+type+" like '%"+value+"%';";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new Admin(rs.getInt("id"),rs.getString("user"),rs.getString("pass"),rs.getInt("power"));
                arr.add(user);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            dbUtil.close(con,sta,rs);
        }
        return arr;
    }
    /*判断用户正确性*/
    public Admin isAdmin(Admin user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        Admin user1 = null;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from admins where user=? and pass=?;";

            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setString(1,user.getUser());
            sta.setString(2,user.getPass());

            rs = sta.executeQuery();

            if (rs.next()){
                user1 = new Admin(rs.getInt("id"),rs.getString("user"),rs.getString("pass"),rs.getInt("power"));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            dbUtil.close(con,sta,rs);
        }
        return user1;
    }
}
