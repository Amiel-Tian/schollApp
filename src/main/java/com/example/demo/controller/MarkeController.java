package com.example.demo.controller;

import com.example.demo.bean.Marke;
import com.example.demo.service.MarkeService;
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
public class MarkeController {
    MarkeService markeService = new MarkeService();
    FileUtils fileUtils = new FileUtils();
    /*
     * 获取市场列表
     *
     * */
    @RequestMapping(value = "/getMarkes", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList getMarkes(HttpServletRequest request){
        return markeService.getMarkes(request);
    }
    /*
     * 查询市场列表
     *
     * */
    @RequestMapping(value = "/searchMarkes", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList searchMarkes(String type, String value, HttpServletRequest request){
        return markeService.searchMarkes(type, value,request);
    }
    /*
     * 添加市场数据
     *
     * */
    @RequestMapping(value = "/addMarke", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int addMarke(Marke lost){
        return markeService.addMarke(lost);
    }
    /*
     * 修改市场数据
     *
     * */
    @RequestMapping(value = "/modifyMarke", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int modifyMarke(Marke lost, HttpServletRequest request){
        return markeService.modifyMarke(lost,request);
    }
    /*
     * 上传市场图片
     *
     * */
    @RequestMapping(value = "/uploadMarkeImg", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public Map<String, String> uploadMarkeImg(MultipartFile file) throws IOException {
        return fileUtils.uploadaaa("markes",file);
    }
}
