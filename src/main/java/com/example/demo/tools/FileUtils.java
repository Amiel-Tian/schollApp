package com.example.demo.tools;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class FileUtils {
    public Map<String, String> uploadaaa(String type,MultipartFile file) throws IllegalStateException, IOException {
        if (file != null){

            //String path = request.getSession().getServletContext().getRealPath("upload");
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式  HH:mm:ss
            String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
            String path = "D:/var/uploaded_files/" + type + "/";
            UUID uuid = UUID.randomUUID();
            String originalFilename = file.getOriginalFilename();
            // String fileName = uuid.toString() + originalFilename;
            String extendName = originalFilename.substring(originalFilename.lastIndexOf("."), originalFilename.length());
            String fileName = uuid.toString() + extendName;
            File dir = new File(path, fileName);
            File filepath = new File(path);
            if (!filepath.exists()) {
                filepath.mkdirs();
            }
            file.transferTo(dir);

            Map<String, String> map = new HashMap<>();
            map.put("filePath", path);
            map.put("fileName", fileName);
            System.out.println(type+"文件夹上传了图片"+fileName);
            return map;
        }else return null;
    }

    //删除图片文件，只是删除文件，不删除数据库信息
    public String delFile(String path) {
        //上篇中前端穿过来的是/imctemp-rainy/*.jpg格式的，只需要取出最后的文件名，写死路径，就可以准确找到文件了
        //前端页面处理路径，
        //var imgpath=path.split("/");
        //imgpath = imgpath[imgpath.length-1];
        String resultInfo = null;
        //System.out.println(path);///imctemp-rainy/2.jpg
        int lastIndexOf = path.lastIndexOf("/");
        String img_path = path.substring(lastIndexOf + 1, path.length());
        //System.out.println(img_path);
        img_path = "D:/var/uploaded_files/" + img_path;
        //System.out.println(img_path);//输出测试一下文件路径是否正确
        File file = new File(img_path);
        if (file.exists()) {//文件是否存在
            if (file.delete()) {//存在就删了，返回1
                resultInfo =  "1";
            } else {
                resultInfo =  "0";
            }
        } else {
            resultInfo = "文件不存在！";
        }
        return resultInfo;
    }
}
