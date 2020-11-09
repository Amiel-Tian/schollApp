package com.example.demo.dao;

import com.example.demo.bean.Lost;
import com.example.demo.bean.Repair;
import com.example.demo.tools.DBUtil;

import java.sql.*;
import java.util.ArrayList;

public class LostDao {
    DBUtil dbUtil = new DBUtil();
    /*获取失物表*/
    public ArrayList getLosts(){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        Lost user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from losts order by id desc;";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new Lost(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname"),rs.getString("deta"),rs.getString("time"),rs.getString("photo"),rs.getString("fontadd"),rs.getString("getadd"));
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
    /*查询失物表*/
    public ArrayList searchLosts(String type, String value){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        Lost user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from losts where "+type+" like '%"+value+"%' order by id desc;";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new Lost(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname"),rs.getString("deta"),rs.getString("time"),rs.getString("photo"),rs.getString("fontadd"),rs.getString("getadd"));
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
    public int addLost(Lost user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        try {
            String sql = "insert into losts(sno,deta,time,photo,fontadd,getadd,sname) values(" +
                    "?,?,?,?,?,?,?)";
            System.out.println(sql);
            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setInt(1,user.getSno());
            sta.setString(2,user.getDeta());
            sta.setString(3,user.getTime());
            sta.setString(4, "losts/"+user.getPhoto());
            sta.setString(5,user.getFontadd());
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
    /*添加失物*/
    public int modifyLost(Lost user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        try {
            String sql = "update losts set sno=?,deta=?,time=?,photo=?,fontadd=?,getadd=?,sname=? where id=?";
            System.out.println(sql);
            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setInt(1,user.getSno());
            sta.setString(2,user.getDeta());
            sta.setString(3,user.getTime());
            sta.setString(4, user.getPhoto());
            sta.setString(5,user.getFontadd());
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
