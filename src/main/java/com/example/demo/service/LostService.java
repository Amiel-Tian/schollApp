package com.example.demo.service;

import com.example.demo.bean.Admin;
import com.example.demo.bean.Log;
import com.example.demo.bean.Lost;
import com.example.demo.bean.Repair;
import com.example.demo.dao.LogDao;
import com.example.demo.dao.LostDao;
import com.example.demo.dao.RepairDao;
import com.example.demo.tools.DateUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class LostService {
    LostDao lostDao = new LostDao();
    LogDao logDao = new LogDao();
    AdminServive adminServive = new AdminServive();
    UserService userService = new UserService();
    /*
     * 获取所有失物数据
     * */
    public ArrayList getLosts(HttpServletRequest request){

        boolean nowAdmin = adminServive.isNowAdmin(request);
        boolean nowUser = userService.isNowUser(request);
        if (nowAdmin || nowUser) {
            System.out.println("请求了失物表");
            return lostDao.getLosts();
        }
        else {
            System.out.println("无权限访问失物表");
            return null;
        }
    }
    /*
     * 搜索失物数据
     * */
    public ArrayList searchLosts(String type, String value, HttpServletRequest request){

        boolean nowAdmin = adminServive.isNowAdmin(request);
        boolean nowUser = userService.isNowUser(request);
        if (nowAdmin || nowUser) {
            return lostDao.searchLosts(type, value);
        }
        else return null;
    }

    /*
     * 添加失物数据
     * */
    public int addLost(Lost user){
        return lostDao.addLost(user);
    }
    /*
     * 修改失物数据
     * */
    public int modifyLost(Lost user ,HttpServletRequest request){

        Admin user1 = adminServive.getNowAdmin(request);
        /*打印*/
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());

        DateUtil dateUtil = new DateUtil(calendar.getTime());

        Log log = new Log(user1.getUser(),dateUtil.getDate(),dateUtil.getTime(),"修改了失物表:"+user.toString());
        logDao.addLog(log);
        return lostDao.modifyLost(user);
    }
}
