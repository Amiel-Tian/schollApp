package com.example.demo.dao;

import com.example.demo.bean.User;
import com.example.demo.tools.DBUtil;

import java.sql.*;
import java.util.ArrayList;

public class UserDao {
    DBUtil dbUtil = new DBUtil();

    /*获取所有用户*/
    public ArrayList getUsers(){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        User user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from users;";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new User(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname"),rs.getString("syear"),rs.getString("zhuanye"),rs.getString("yuanxi"),rs.getString("type"),rs.getString("school"),rs.getString("img"));
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
    public User isUser(User user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        User user1 = null;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from users where sno=? and sname=?;";

            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setInt(1,user.getSno());
            sta.setString(2,user.getSname());
            rs = sta.executeQuery();

            if (rs.next()){
                user1 = new User(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname"),rs.getString("syear"),rs.getString("zhuanye"),rs.getString("yuanxi"),rs.getString("type"),rs.getString("school"),rs.getString("img"));
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
    /*判断用户是否存在*/
    public User isSno(User user){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        User user1 = null;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from users where sno='"+user.getSno()+"';";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            if (rs.next()){
                user1 = new User(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname"),rs.getString("syear"),rs.getString("zhuanye"),rs.getString("yuanxi"),rs.getString("type"),rs.getString("school"),rs.getString("img"));
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
    /*添加用户*/
    public int addUser(User user){
        Connection con = null;
        Statement sta = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        User user1 = isSno(user);
        if (user1==null){
            try {
                String sql = "insert into users(sno,sname,syear,zhuanye,yuanxi,type,school,img) values(" +
                        "?,?,?,?,?,?,?,'userHand/user-ico06.jpg')";
                con = DBUtil.getConnection();
                ps = con.prepareStatement(sql);
                ps.setInt(1,user.getSno());
                ps.setString(2,user.getSname());
                ps.setString(3,user.getSyear());
                ps.setString(4,user.getZhuanye());
                ps.setString(5,user.getYuanxi());
                ps.setString(6,user.getType());
                ps.setString(7,user.getSchool());
                num = ps.executeUpdate();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }finally {
                dbUtil.close(con,sta,ps);
            }
            if (num > 0) flag = 1;
            return flag;
        }else return -1;
    }
    /*查找用户信息*/
    public ArrayList searchUser(String type, String value){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        User user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from users where "+type+" like '%"+value+"%';";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new User(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname"),rs.getString("syear"),rs.getString("zhuanye"),rs.getString("yuanxi"),rs.getString("type"),rs.getString("school"),rs.getString("img"));
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
    /*修改用户信息*/
    public int modifyUser(User user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        try {
            String sql = "update users set sno=?,sname=?,syear=?,zhuanye=?,yuanxi=?,type=?,school=?,img=? where id = ?";
            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setInt(1,user.getSno());
            sta.setString(2,user.getSname());
            sta.setString(3,user.getSyear());
            sta.setString(4,user.getZhuanye());
            sta.setString(5,user.getYuanxi());
            sta.setString(6,user.getType());
            sta.setString(7,user.getSchool());
            sta.setString(8,user.getImg());
            sta.setInt(9,user.getId());
            num = sta.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            dbUtil.close(con,sta,rs);
        }
        if (num > 0) flag = 1;
        return flag;
    }
}
