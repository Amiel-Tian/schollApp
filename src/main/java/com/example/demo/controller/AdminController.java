package com.example.demo.controller;

import com.example.demo.bean.Admin;
import com.example.demo.service.AdminServive;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

@Controller
public class AdminController {
    AdminServive adminServive = new AdminServive();
    /*
     * 获取所有用户
     *
     * */
    @RequestMapping(value = "/getAdmins", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList getAdmins(HttpServletRequest request){
        return adminServive.getAdmins(request);
    }
    /*
     * 获取所有用户
     *
     * */
    @RequestMapping(value = "/searchAdmin", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList searchAdmin(String type, String value, HttpServletRequest request){
        return adminServive.searchAdmin(type, value, request);
    }
    /*
     * 获取当前登录管理
     *
     * */
    @RequestMapping(value = "/getNowAdmin", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public Admin getNowAdmin(HttpServletRequest request){
        Admin i = new Admin();
        i = adminServive.getNowAdmin(request);
        return i;
    }
    /*
     * 判断登录用户是否存在，密码是否正确
     *
     * */
    @RequestMapping(value = "/isAdmin", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public boolean isAdmin(Admin user, HttpServletRequest request, HttpServletResponse response){
        return  adminServive.isAdmin(user,request);
    }
}
