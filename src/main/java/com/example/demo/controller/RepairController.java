package com.example.demo.controller;

import com.example.demo.bean.Repair;
import com.example.demo.service.RepairService;
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
public class RepairController {
    RepairService repairService = new RepairService();
    FileUtils fileUtils = new FileUtils();
    /*
     * 获取报修列表
     *
     * */
    @RequestMapping(value = "/getRepairs", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList getRepairs(HttpServletRequest request){
        return repairService.getRepairs(request);
    }
    /*
     * 查询报修列表
     *
     * */
    @RequestMapping(value = "/searchRepairs", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public ArrayList searchRepairs(String type, String value, HttpServletRequest request){
        return repairService.searchRepairs(type, value,request);
    }
    /*
     * 添加报修数据
     *
     * */
    @RequestMapping(value = "/addRepair", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int addRepair(Repair repair){
        return repairService.addRepair(repair);
    }
    /*
     * 修改报修数据
     *
     * */
    @RequestMapping(value = "/modifyRepair", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int modifyRepair(Repair repair, HttpServletRequest request){
        return repairService.modifyRepair(repair,request);
    }
    /*
     * 删除报修数据
     *
     * */
    @RequestMapping(value = "/deleRepair", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public int deleRepair(Repair repair){
        return repairService.deleRepair(repair);
    }
    /*
     * 上传报修图片
     *
     * */
    @RequestMapping(value = "/uploadRepairImg", method = RequestMethod.POST)
    @ResponseBody()
    @CrossOrigin
    public Map<String, String> uploadRepairImg(MultipartFile file) throws IOException {
       return fileUtils.uploadaaa("repairs",file);
    }
}
