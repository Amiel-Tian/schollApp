package com.example.demo.controller;

import com.example.demo.bean.Log;
import com.example.demo.bean.User;
import com.example.demo.bean.Userstate;
import com.example.demo.dao.LogDao;
import com.example.demo.service.UserstateService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserstateController {

    UserstateService userstateService = new UserstateService();
    /*
     * 搜索用户
     *
     * */
    @RequestMapping(value = "/getUserstate", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public Userstate getUserstate(HttpServletRequest request){
        return userstateService.getUserstate(request);
    }
    /*
     * 修改用户
     *
     * */
    @RequestMapping(value = "/modifyUserstate", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int modifyUserstate(Userstate user, HttpServletRequest request){
        return  userstateService.modifyUserstate(user,request);
    }
}
