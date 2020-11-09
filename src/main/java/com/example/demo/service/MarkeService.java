package com.example.demo.service;

import com.example.demo.bean.Admin;
import com.example.demo.bean.Log;
import com.example.demo.bean.Lost;
import com.example.demo.bean.Marke;
import com.example.demo.dao.LogDao;
import com.example.demo.dao.MarkeDao;
import com.example.demo.tools.DateUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class MarkeService {
    MarkeDao markeDao = new MarkeDao();
    LogDao logDao = new LogDao();
    AdminServive adminServive = new AdminServive();
    UserService userService = new UserService();
    /*
     * 获取所有出售数据
     * */
    public ArrayList getMarkes(HttpServletRequest request){

        boolean nowAdmin = adminServive.isNowAdmin(request);
        boolean nowUser = userService.isNowUser(request);
        if (nowAdmin || nowUser) {
            System.out.println("请求了出售表");
            return markeDao.getMarkes();}
        else {
            System.out.println("无权限访问出售表");
            return null;
        }
    }

    /*
     * 获取所有出售数据
     * */
    public ArrayList searchMarkes(String type, String value,HttpServletRequest request){
        boolean nowAdmin = adminServive.isNowAdmin(request);
        if (nowAdmin)
            return markeDao.searchMarkes(type, value);
        return null;
    }

    /*
     * 添加出售数据
     * */
    public int addMarke(Marke user){
        return markeDao.addMarke(user);
    }
    /*
     * 修改出售数据
     * */
    public int modifyMarke(Marke user,HttpServletRequest request){

        Admin user1 = adminServive.getNowAdmin(request);
        /*打印*/
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());

        DateUtil dateUtil = new DateUtil(calendar.getTime());

        Log log = new Log(user1.getUser(),dateUtil.getDate(),dateUtil.getTime(),"修改了市场表:"+user.toString());
        logDao.addLog(log);
        return markeDao.modifyMarke(user);
    }
}
