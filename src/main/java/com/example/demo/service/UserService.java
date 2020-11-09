package com.example.demo.service;

import com.example.demo.bean.Admin;
import com.example.demo.bean.Log;
import com.example.demo.bean.User;
import com.example.demo.dao.LogDao;
import com.example.demo.dao.UserDao;
import com.example.demo.tools.DateUtil;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class UserService {
    UserDao userDao = new UserDao();
    AdminServive adminServive = new AdminServive();
    LogDao logDao = new LogDao();

    /*
    * 获取所有用户
    * */
    public ArrayList getUsers(HttpServletRequest request){
        boolean nowAdmin = adminServive.isNowAdmin(request);
        if (nowAdmin) return userDao.getUsers();
        else return null;
    }
    /*
    * 查找用户
    * */
    public ArrayList searchUser(String type,String value, HttpServletRequest request){
        boolean nowAdmin = adminServive.isNowAdmin(request);
        if (nowAdmin) return userDao.searchUser(type, value);
        else return null;
    }
    /*
    * 修改用户
    * */
    public int modifyUser(User user, HttpServletRequest request){
        Admin user1 = adminServive.getNowAdmin(request);
        /*打印*/
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());

        DateUtil dateUtil = new DateUtil(calendar.getTime());

        Log log = new Log(user1.getUser(),dateUtil.getDate(),dateUtil.getTime(),"修改了用户表:"+user.toString());
        logDao.addLog(log);
        return userDao.modifyUser(user);
    }
    /*
    * 添加用户
    * */
    public int addUser(User user){
        return userDao.addUser(user);
    }
    /*
    * 获取当前session中的用户
    * */
    public User getNowUser(HttpServletRequest request){
        if(request.getSession() != null){
            HttpSession session = request.getSession();
            User nowUser = (User) session.getAttribute("nowUser");
            if (nowUser == null) nowUser=new User(0);
            return nowUser;
        }else return new User(0);
    }
    /*
     * 判断当前session中的用户是否合法
     * */
    public boolean isNowUser(HttpServletRequest request){
        if(request.getSession() != null){
            HttpSession session = request.getSession();
            User nowUser = (User) session.getAttribute("nowUser");
            if (nowUser == null) nowUser=new User(0);
            User admin = userDao.isUser(nowUser);
            if (admin != null) return true;
            else return false;
        }else return false;
    }
    /*
    * 判断用户，正确将用户储存进session
    * */
    public boolean isUser(User user, HttpServletRequest request, HttpServletResponse response){
        User user1 = userDao.isUser(user);

        if (user1 != null){
            HttpSession session = request.getSession();
            session.setAttribute("nowUser",user1);
            session.setMaxInactiveInterval(0);

            Cookie c = new Cookie("JSESSIONID",session.getId());
            c.setMaxAge(30 * 24 * 60 * 60);
            c.setPath("/");
            response.addCookie(c);

            /*打印*/
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date());

            DateUtil dateUtil = new DateUtil(calendar.getTime());
            Log log = new Log(user1.getSno()+user1.getSname(),dateUtil.getDate(),dateUtil.getTime(),"登录了账号");

            logDao.addLog(log);
            return true;
        }else {
            return false;
        }
    }
}
