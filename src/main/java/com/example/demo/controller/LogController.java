package com.example.demo.controller;

import com.example.demo.bean.Admin;
import com.example.demo.dao.LogDao;
import com.example.demo.service.AdminServive;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Controller
public class LogController {
    LogDao logDao = new LogDao();
    AdminServive adminServive = new AdminServive();
    /*
     * 获取日志列表
     *
     * */
    @RequestMapping(value = "/getLogs", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList getLogs(HttpServletRequest request){
        boolean nowAdmin = adminServive.isNowAdmin(request);
        if (nowAdmin){
            Admin nowAdmin1 = adminServive.getNowAdmin(request);
            if (nowAdmin1.getPower()==1) return logDao.getLogs();
        }
        return null;
    }
}
