package com.example.demo.dao;

import com.example.demo.bean.User;
import com.example.demo.bean.Userstate;
import com.example.demo.tools.DBUtil;

import java.sql.*;
import java.util.ArrayList;

public class UserStateDao {
    DBUtil dbUtil = new DBUtil();
    /*修改*/
    public int modifyUserstate(Userstate user){
        Connection con = null;
        PreparedStatement sta = null;
        ResultSet rs = null;
        int num = 0;
        int flag = 0;
        try {
            String sql = "update userstate set wen=?,radd=?,time=? where sno=?";
            con = DBUtil.getConnection();
            sta = con.prepareStatement(sql);
            sta.setString(1,user.getWen());
            sta.setString(2,user.getAdd());
            sta.setString(3,user.getTime());
            sta.setInt(4,user.getSno() );
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
    /*查询体温*/
    public Userstate getUserstate(User user){
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;

        Userstate user1 = null;
        ArrayList arr = new ArrayList();
        try {
            String sql = "select * from userstate where sno='"+user.getSno()+"';";

            con = DBUtil.getConnection();
            sta = con.createStatement();

            rs = sta.executeQuery(sql);

            if (rs.next()){
                user1 = new Userstate(rs.getInt("id"),rs.getInt("sno"),rs.getString("sname"),rs.getString("wen"),rs.getString("radd"),rs.getString("time"));
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
