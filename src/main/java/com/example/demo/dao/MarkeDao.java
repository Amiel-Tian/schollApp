package com.example.demo.dao;

import com.example.demo.bean.Lost;
import com.example.demo.bean.Marke;
import com.example.demo.tools.DBUtil;

import java.sql.*;
import java.util.ArrayList;

public class MarkeDao {
    DBUtil dbUtil = new DBUtil();
    /*获取出售表*/
    public ArrayList getMarkes(){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        Marke user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from markes order by id desc;";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new Marke(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname"),rs.getString("deta"),rs.getString("time"),rs.getString("photo"),rs.getInt("price"),rs.getString("getadd"));
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
    /*查询出售表*/
    public ArrayList searchMarkes(String type,String value){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        Marke user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from markes where "+type+" like '%"+value+"%' order by id desc;";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new Marke(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname"),rs.getString("deta"),rs.getString("time"),rs.getString("photo"),rs.getInt("price"),rs.getString("getadd"));
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
    /*添加失物*/
    public int addMarke(Marke user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        try {
            String sql = "insert into markes(sno,deta,time,photo,price,getadd,sname) values(" +
                    "?,?,?,?,?,?,?)";
            System.out.println(sql);
            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setInt(1,user.getSno());
            sta.setString(2,user.getDeta());
            sta.setString(3,user.getTime());
            sta.setString(4,"markes/" +user.getPhoto());
            sta.setInt(5,user.getPrice());
            sta.setString(6,user.getGetadd());
            sta.setString(7,user.getSname());

            num = sta.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            dbUtil.close(con, sta, rs);
        }
        if (num > 0) flag = 1;
        return flag;
    }
    /*修改失物*/
    public int modifyMarke(Marke user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        try {
            String sql = "update markes set sno=?,deta=?,time=?,photo=?,price=?,getadd=?,sname=? where id=?";
            System.out.println(sql);
            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setInt(1,user.getSno());
            sta.setString(2,user.getDeta());
            sta.setString(3,user.getTime());
            sta.setString(4,user.getPhoto());
            sta.setInt(5,user.getPrice());
            sta.setString(6,user.getGetadd());
            sta.setString(7,user.getSname());
            sta.setInt(8,user.getId());

            num = sta.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            dbUtil.close(con, sta, rs);
        }
        if (num > 0) flag = 1;
        return flag;
    }
}
