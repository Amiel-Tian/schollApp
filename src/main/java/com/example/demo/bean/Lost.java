package com.example.demo.bean;

/*失物类*/
public class Lost {
    int id;
    int sno;
    String sname;
    String deta;
    String time;
    String photo;
    String fontadd;
    String getadd;
    public Lost(){}
    public Lost(int id, int sno, String deta, String time, String photo, String fontadd, String getadd) {
        this.id = id;
        this.sno = sno;
        this.deta = deta;
        this.time = time;
        this.photo = photo;
        this.fontadd = fontadd;
        this.getadd = getadd;
    }

    public Lost(int id, int sno, String sname, String deta, String time, String photo, String fontadd, String getadd) {
        this.id = id;
        this.sno = sno;
        this.sname = sname;
        this.deta = deta;
        this.time = time;
        this.photo = photo;
        this.fontadd = fontadd;
        this.getadd = getadd;
    }

    @Override
    public String toString() {
        return "Lost{" +
                "id=" + id +
                ", sno=" + sno +
                ", sname='" + sname + '\'' +
                ", deta='" + deta + '\'' +
                ", time='" + time + '\'' +
                ", photo='" + photo + '\'' +
                ", fontadd='" + fontadd + '\'' +
                ", getadd='" + getadd + '\'' +
                '}';
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
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

    public String getDeta() {
        return deta;
    }

    public void setDeta(String deta) {
        this.deta = deta;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getFontadd() {
        return fontadd;
    }

    public void setFontadd(String fontadd) {
        this.fontadd = fontadd;
    }

    public String getGetadd() {
        return getadd;
    }

    public void setGetadd(String getadd) {
        this.getadd = getadd;
    }
}
