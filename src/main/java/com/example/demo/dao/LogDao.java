package com.example.demo.dao;

import com.example.demo.bean.Log;
import com.example.demo.bean.Lost;
import com.example.demo.bean.User;
import com.example.demo.tools.DBUtil;

import java.sql.*;
import java.util.ArrayList;

public class LogDao {
    DBUtil dbUtil = new DBUtil();
    /*添加日志*/
    public int addLog(Log log){
        Connection con = null;
        Statement sta = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        int num = 0;
        int flag = 0;

        try {
            String sql = "insert into logs(user,date,time,content) values(?,?,?,?)";
            con = DBUtil.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1,log.getUser());
            ps.setString(2,log.getDate());
            ps.setString(3,log.getTime());
            ps.setString(4,log.getContent());
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
    }
    /*获取失物表*/
    public ArrayList getLogs(){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        Log user;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from logs order by id desc;";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            while (rs.next()){
                user = new Log(rs.getInt("id"),rs.getString("user"),rs.getString("date"),rs.getString("time"),rs.getString("content"));
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
}
