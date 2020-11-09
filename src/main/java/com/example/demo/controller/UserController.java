package com.example.demo.controller;

import com.example.demo.bean.User;
import com.example.demo.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

@Controller
public class UserController {
    UserService userService = new UserService();

    /*
    * 获取所有用户
    *
    * */
    @RequestMapping(value = "/getUsers", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList getUsers(HttpServletRequest request){
        return userService.getUsers(request);
    }
    /*
    * 创建用户
    *
    * */
    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int addUser(User user){
        int i = userService.addUser(user);
        return i;
    }
    /*
    * 获取session中的用户
    *
    * */
    @RequestMapping(value = "/getNowUser", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public User getNowUser(HttpServletRequest request){
        User i = userService.getNowUser(request);
        return i;
    }
    /*
    * 判断登录用户是否存在，密码是否正确
    *
    * */
    @RequestMapping(value = "/isUser", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public boolean isUser(User user, HttpServletRequest request, HttpServletResponse response){
        return  userService.isUser(user,request, response);
    }
    /*
    * 搜索用户
    *
    * */
    @RequestMapping(value = "/searchUser", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList searchUser(String type, String value, HttpServletRequest request){
        return  userService.searchUser(type, value,request);
    }
    /*
    * 修改用户
    *
    * */
    @RequestMapping(value = "/modifyUser", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int modifyUser(User user,HttpServletRequest request){
        return  userService.modifyUser(user,request);
    }
}
