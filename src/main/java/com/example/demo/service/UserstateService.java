package com.example.demo.service;

import com.example.demo.bean.Log;
import com.example.demo.bean.User;
import com.example.demo.bean.Userstate;
import com.example.demo.dao.LogDao;
import com.example.demo.dao.UserStateDao;
import com.example.demo.tools.DateUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.Calendar;
import java.util.Date;

public class UserstateService {
    LogDao logDao = new LogDao();
    UserStateDao userStateDao = new UserStateDao();
    UserService userService = new UserService();
    /*
     * 查询体温表
     * */
    public Userstate getUserstate(HttpServletRequest request){
        User nowUser = userService.getNowUser(request);
        Userstate userstate = userStateDao.getUserstate(nowUser);
        return userstate;
    }
    /*
     * 修改用户
     * */
    public int modifyUserstate(Userstate userstate, HttpServletRequest request){
        User nowUser = userService.getNowUser(request);

        if (nowUser.getId() != 0) {

            userstate.setSno(nowUser.getSno());
            System.out.println(nowUser.getSno() + nowUser.getSname() + "修改体温为：" + userstate.toString());
            /*打印*/
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date());

            DateUtil dateUtil = new DateUtil(calendar.getTime());
            Log log = new Log(nowUser.getSno() + nowUser.getSname(), dateUtil.getDate(), dateUtil.getTime(), "修改了体温表:" + userstate.toString());
            logDao.addLog(log);

            return userStateDao.modifyUserstate(userstate);
        }else return -1;
    }
}
