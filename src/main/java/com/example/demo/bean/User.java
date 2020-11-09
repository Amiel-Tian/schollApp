package com.example.demo.bean;

public class User {
    int id;
    int sno;
    String sname;
    String syear;
    String zhuanye;
    String yuanxi;
    String type;
    String school;
    String img;
    public User(){};
    public User(int id){}
    public User(int id, int sno, String sname, String syear, String zhuanye, String yuanxi, String type, String school) {
        this.id = id;
        this.sno = sno;
        this.sname = sname;
        this.syear = syear;
        this.zhuanye = zhuanye;
        this.yuanxi = yuanxi;
        this.type = type;
        this.school = school;
    }

    public User(int id, int sno, String sname, String syear, String zhuanye, String yuanxi, String type, String school, String img) {
        this.id = id;
        this.sno = sno;
        this.sname = sname;
        this.syear = syear;
        this.zhuanye = zhuanye;
        this.yuanxi = yuanxi;
        this.type = type;
        this.school = school;
        this.img = img;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", sno=" + sno +
                ", sname='" + sname + '\'' +
                ", syear='" + syear + '\'' +
                ", zhuanye='" + zhuanye + '\'' +
                ", yuanxi='" + yuanxi + '\'' +
                ", type='" + type + '\'' +
                ", school='" + school + '\'' +
                '}';
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSyear() {
        return syear;
    }

    public void setSyear(String syear) {
        this.syear = syear;
    }

    public String getZhuanye() {
        return zhuanye;
    }

    public void setZhuanye(String zhuanye) {
        this.zhuanye = zhuanye;
    }

    public String getYuanxi() {
        return yuanxi;
    }

    public void setYuanxi(String yuanxi) {
        this.yuanxi = yuanxi;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }
}
