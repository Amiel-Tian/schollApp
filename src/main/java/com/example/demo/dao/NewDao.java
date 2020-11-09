package com.example.demo.dao;

import com.example.demo.bean.Marke;
import com.example.demo.bean.New;
import com.example.demo.tools.DBUtil;

import java.sql.*;
import java.util.ArrayList;

public class NewDao {
    DBUtil dbUtil = new DBUtil();
    /*获取新闻表*/
    public ArrayList getNews(){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        New user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from news order by id desc;";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new New(rs.getInt("id"),rs.getString("type"),rs.getString("time"),rs.getString("title"),rs.getString("content"));
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
    /*查询新闻表*/
    public ArrayList searchNews(String type, String value){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        New user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from news where "+type+" like '%"+value+"%'  order by id desc;";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new New(rs.getInt("id"),rs.getString("type"),rs.getString("time"),rs.getString("title"),rs.getString("content"));
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
    /*添加新闻*/
    public int addNew(New user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        try {
            String sql = "insert into news(type,time,title,content) values(" +
                    "?,?,?,?)";
            System.out.println(sql);
            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setString(1,user.getType());
            sta.setString(2,user.getTime());
            sta.setString(3, user.getTitle());
            sta.setString(4,user.getContent());

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
    /*修改新闻*/
    public int modifyNew(New user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        try {
            String sql = "update news set type=?,time=?,title=?,content=? where id = ?";
            System.out.println(sql);
            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setString(1,user.getType());
            sta.setString(2,user.getTime());
            sta.setString(3, user.getTitle());
            sta.setString(4,user.getContent());
            sta.setInt(5,user.getId());

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
