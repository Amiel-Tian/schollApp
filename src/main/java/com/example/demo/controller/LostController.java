package com.example.demo.controller;

import com.example.demo.bean.Lost;
import com.example.demo.service.LostService;
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
public class LostController {
    LostService lostService = new LostService();
    FileUtils fileUtils = new FileUtils();
    /*
     * 获取失物列表
     *
     * */
    @RequestMapping(value = "/getLosts", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList getLosts(HttpServletRequest request){
        return lostService.getLosts(request);
    }
    /*
     * 查询失物列表
     *
     * */
    @RequestMapping(value = "/searchLosts", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList searchLosts(String type, String value, HttpServletRequest request){
        return lostService.searchLosts(type, value,request);
    }
    /*
     * 添加失物数据
     *
     * */
    @RequestMapping(value = "/addLost", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int addLost(Lost lost){
        return lostService.addLost(lost);
    }
    /*
     * 修改失物数据
     *
     * */
    @RequestMapping(value = "/modifyLost", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int modifyLost(Lost lost, HttpServletRequest request){
        return lostService.modifyLost(lost,request);
    }
    /*
     * 上传失物图片
     *
     * */
    @RequestMapping(value = "/uploadLostImg", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public Map<String, String> uploadLostImg(MultipartFile file) throws IOException {
        return fileUtils.uploadaaa("losts", file);
    }
}
