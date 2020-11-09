package com.example.demo.service;

import com.example.demo.bean.Admin;
import com.example.demo.bean.Log;
import com.example.demo.bean.Marke;
import com.example.demo.bean.New;
import com.example.demo.dao.LogDao;
import com.example.demo.dao.MarkeDao;
import com.example.demo.dao.NewDao;
import com.example.demo.tools.DateUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class NewService {
    NewDao newDao = new NewDao();
    LogDao logDao = new LogDao();
    AdminServive adminServive = new AdminServive();
    UserService userService = new UserService();
    /*
     * 获取所有新闻数据
     * */
    public ArrayList getNews(HttpServletRequest request){
        boolean nowAdmin = adminServive.isNowAdmin(request);
        boolean nowUser = userService.isNowUser(request);
        if (nowAdmin || nowUser) {
            System.out.println("请求了新闻列表");
            return newDao.getNews();
        }
        else {
            System.out.println("无权限访问新闻列表");
            return null;
        }
    }
    /*
     * 查询新闻数据
     * */
    public ArrayList searchNews(String type, String value, HttpServletRequest request){
        boolean nowAdmin = adminServive.isNowAdmin(request);
        if (nowAdmin)
            return newDao.searchNews(type, value);
        else return null;
    }

    /*
     * 添加新闻数据
     * */
    public int addNew(New user, HttpServletRequest request){

        Admin user1 = adminServive.getNowAdmin(request);
        /*打印*/
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());

        DateUtil dateUtil = new DateUtil(calendar.getTime());

        Log log = new Log(user1.getUser(),dateUtil.getDate(),dateUtil.getTime(),"新建新闻:"+user.toString());
        logDao.addLog(log);return newDao.addNew(user);
    }
    /*
     * 修改新闻数据
     * */
    public int modifyNew(New user, HttpServletRequest request){

        Admin user1 = adminServive.getNowAdmin(request);
        /*打印*/
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());

        DateUtil dateUtil = new DateUtil(calendar.getTime());

        Log log = new Log(user1.getUser(),dateUtil.getDate(),dateUtil.getTime(),"修改了新闻表:"+user.toString());
        logDao.addLog(log);return newDao.modifyNew(user);
    }
}
