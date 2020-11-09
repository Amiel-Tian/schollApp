package com.example.demo.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/index")
    public String index(){return "index";}
    @GetMapping("/admin")
    public String admin(){return "admin";}
    @GetMapping("/user_list")
    public String user_list(){return "user_list";}
    @GetMapping("/admin_list")
    public String admin_list(){return "admin_list";}
    @GetMapping("/repair_list")
    public String repair_list(){return "repair_list";}
    @GetMapping("/lost_list")
    public String lost_list(){return "lost_list";}
    @GetMapping("/marke_list")
    public String marke_list(){return "marke_list";}
    @GetMapping("/new_list")
    public String new_list(){return "new_list";}
    @GetMapping("/log_list")
    public String log_list(){return "log_list";}
}
