package com.example.demo.service;

import com.example.demo.bean.Admin;
import com.example.demo.bean.Log;
import com.example.demo.dao.AdminDao;
import com.example.demo.dao.LogDao;
import com.example.demo.tools.DateUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class AdminServive {
    AdminDao adminDao = new AdminDao();
    LogDao logDao = new LogDao();

    /*
     * 获取所有用户
     * */
    public ArrayList getAdmins(HttpServletRequest request){
        boolean nowAdmin = isNowAdmin(request);
        if (nowAdmin) return adminDao.getAdmins();
        else return null;
    }
    /*
     * 搜索用户
     * */
    public ArrayList searchAdmin(String type, String value, HttpServletRequest request){

        boolean nowAdmin = isNowAdmin(request);
        if (nowAdmin) return adminDao.searchAdmin(type, value);
        else return null;
    }
    /*
     * 获取当前session中的用户
     * */
    public Admin getNowAdmin(HttpServletRequest request){
        if(request.getSession() != null){
            HttpSession session = request.getSession();
            Admin nowUser = (Admin) session.getAttribute("nowAdmin");
            if (nowUser == null) nowUser=new Admin(0);

   /*         boolean admin = isAdmin(nowUser, request);
            if (!admin) return new Admin(0);*/
            return nowUser;
        }else return new Admin(0);
    }
    /*
     * 判断当前session中的用户是否合法
     * */
    public boolean isNowAdmin(HttpServletRequest request){
        if(request.getSession() != null){
            HttpSession session = request.getSession();
            Admin nowUser = (Admin) session.getAttribute("nowAdmin");
            if (nowUser == null) nowUser=new Admin(0);
            Admin admin = adminDao.isAdmin(nowUser);
            if (admin != null) return true;
            else return false;
        }else return false;
    }
    /*
     * 判断用户，正确将用户储存进session
     * */
    public boolean isAdmin(Admin user, HttpServletRequest request){
        Admin user1 = adminDao.isAdmin(user);

        if (user1 != null){
            HttpSession session = request.getSession();
            session.setAttribute("nowAdmin",user1);
//            session.setMaxInactiveInterval(0);

           /* *//*存cookie*//*
            Cookie c = new Cookie("JSESSIONID",session.getId());
            c.setMaxAge(30 * 24 * 60 * 60);
            c.setPath("/");
            response.addCookie(c);*/

            /*打印*/
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date());

            DateUtil dateUtil = new DateUtil(calendar.getTime());

            Log log = new Log(user1.getUser(),dateUtil.getDate(),dateUtil.getTime(),"登录系统");
            logDao.addLog(log);
            System.out.println("-------------------------------------"+user1.getUser()+"登录系统！时间："+dateUtil.getDate()+dateUtil.getTime()+"---------------------------------------");
            return true;
        }else {
            return false;
        }
    }
}
