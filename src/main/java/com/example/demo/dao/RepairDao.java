package com.example.demo.dao;

import com.example.demo.bean.Repair;
import com.example.demo.tools.DBUtil;

import java.sql.*;
import java.util.ArrayList;

public class RepairDao {
    DBUtil dbUtil = new DBUtil();
    /*获取报修表*/
    public ArrayList getRepairs(){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        Repair user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from repairs order by id desc;";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new Repair(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname"),rs.getString("time"),rs.getString("radd"),rs.getString("deta"),rs.getString("photo"),rs.getString("state"));
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
    /*查询报修表*/
    public ArrayList searchRepairs(String type, String value){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        Repair user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from repairs where "+type+" like '%"+value+"%' order by id desc";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new Repair(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname") ,rs.getString("time"),rs.getString("radd"),rs.getString("deta"),rs.getString("photo"),rs.getString("state"));
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
    /*添加保修表*/
    public int addRepair(Repair user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        Repair repair = isAdd(user);
        if (repair == null) {
            try {
                String sql = "insert into repairs(sno,time,radd,deta,photo,state,sname) values(" +
                        "?,?,?,?,?,?,?)";
                System.out.println(sql);
                con = DBUtil.getConnection();
                sta = con.prepareStatement(sql);
                sta.setInt(1,user.getSno());
                sta.setString(2,user.getTime());
                sta.setString(3,user.getAdd());
                sta.setString(4, user.getDeta());
                sta.setString(5,"repairs" +user.getPhoto());
                sta.setString(6,"未处理");
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
        }else return -1;
    }
    /*修改保修表*/
    public int modifyRepair(Repair user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        try {
            String sql = "update repairs set sno=?,time=?,radd=?,deta=?,photo=?,state=?,sname=? where id = ?";
            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setInt(1,user.getSno());
            sta.setString(2,user.getTime());
            sta.setString(3,user.getAdd());
            sta.setString(4, user.getDeta());
            sta.setString(5, user.getPhoto());
            sta.setString(6,user.getState());
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
    /*删除保修表*/
    public int deleRepair(Repair user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        try {
            String sql = "delete from repairs where id = ?";
            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setInt(1,user.getSno());

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
    /*判断地点是否存在*/
    public Repair isAdd(Repair user){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        Repair user1 = null;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from repairs where radd='"+user.getAdd()+"';";
            System.out.println(sql);
            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            if (rs.next()){
                user1 = new Repair(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname"),rs.getString("time"),rs.getString("radd"),rs.getString("deta"),rs.getString("photo"),rs.getString("state"));
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
