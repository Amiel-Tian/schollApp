package com.example.demo.controller;

import com.example.demo.bean.New;
import com.example.demo.service.NewService;
import com.example.demo.tools.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

@Controller
public class NewController {
    NewService newService = new NewService();
    FileUtils fileUtils = new FileUtils();
    /*
     * 获取新闻列表
     *
     * */
    @RequestMapping(value = "/getNews", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList getNews(HttpServletRequest request){
        return newService.getNews(request);
    }
    /*
     * 获取新闻列表
     *
     * */
    @RequestMapping(value = "/searchNews", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList searchNews(String type, String value, HttpServletRequest request){
        return newService.searchNews(type, value,request);
    }
    /*
     * 添加新闻数据
     *
     * */
    @RequestMapping(value = "/addNew", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int addNew(New lost, HttpServletRequest request){
        return newService.addNew(lost, request);
    }
    /*
     * 修改新闻数据
     *
     * */
    @RequestMapping(value = "/modifyNew", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int modifyNew(New lost, HttpServletRequest request){
        return newService.modifyNew(lost,request);
    }
    /*
     * 上传新闻图片
     *
     * */
    @RequestMapping(value = "/uploadNewImg", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public Map<String, String> uploadNewImg(MultipartFile file) throws IOException {
        return fileUtils.uploadaaa("news",file);
    }
}
