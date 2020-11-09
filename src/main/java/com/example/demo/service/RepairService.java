package com.example.demo.service;

import com.example.demo.bean.Admin;
import com.example.demo.bean.Log;
import com.example.demo.bean.Repair;
import com.example.demo.dao.LogDao;
import com.example.demo.dao.RepairDao;
import com.example.demo.tools.DateUtil;
import com.example.demo.tools.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

public class RepairService {
    RepairDao repairDao = new RepairDao();
    AdminServive adminServive = new AdminServive();
    UserService userService = new UserService();
    LogDao logDao = new LogDao();
    FileUtils fileUtils = new FileUtils();
    /*
     * 获取所有报修数据
     * */
    public ArrayList getRepairs(HttpServletRequest request){

        boolean nowAdmin = adminServive.isNowAdmin(request);
        boolean nowUser = userService.isNowUser(request);
        if (nowAdmin || nowUser) {
            System.out.println("请求了报修表");
            return repairDao.getRepairs();
        }
        else {
            System.out.println("无权限访问报修表");
            return null;
        }
    }
    /*
     * 查询报修数据
     * */
    public ArrayList searchRepairs(String type, String value, HttpServletRequest request){

        boolean nowAdmin = adminServive.isNowAdmin(request);
        boolean nowUser = userService.isNowUser(request);
        if (nowAdmin || nowUser) {return repairDao.searchRepairs(type, value);}
        else return null;
    }

    /*
     * 添加报修数据
     * */
    public int addRepair(Repair user){
        return repairDao.addRepair(user);
    }
    /*
     * 删除报修数据
     * */
    public int deleRepair(Repair user){
        String s = fileUtils.delFile(user.getPhoto());
        return repairDao.deleRepair(user);
    }
    /*
     * 修改报修数据
     * */
    public int modifyRepair(Repair user, HttpServletRequest request){

        Admin user1 = adminServive.getNowAdmin(request);
        /*打印*/
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());

        DateUtil dateUtil = new DateUtil(calendar.getTime());
        System.out.println(user);
        Log log = new Log(user1.getUser(),dateUtil.getDate(),dateUtil.getTime(),"修改了报修表:"+user.toString());
        logDao.addLog(log);
        return repairDao.modifyRepair(user);
    }
}
