package com.example.demo.bean;

public class Marke {
    int id;
    int sno;
    String sname;
    String deta;
    String time;
    String photo;
    int price;
    String getadd;
    public Marke(){}
    public Marke(int id, int sno, String deta, String time, String photo, int price, String getadd) {
        this.id = id;
        this.sno = sno;
        this.deta = deta;
        this.time = time;
        this.photo = photo;
        this.price = price;
        this.getadd = getadd;
    }

    public Marke(int id, int sno, String sname, String deta, String time, String photo, int price, String getadd) {
        this.id = id;
        this.sno = sno;
        this.sname = sname;
        this.deta = deta;
        this.time = time;
        this.photo = photo;
        this.price = price;
        this.getadd = getadd;
    }

    @Override
    public String toString() {
        return "Marke{" +
                "id=" + id +
                ", sno=" + sno +
                ", sname='" + sname + '\'' +
                ", deta='" + deta + '\'' +
                ", time='" + time + '\'' +
                ", photo='" + photo + '\'' +
                ", price=" + price +
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getGetadd() {
        return getadd;
    }

    public void setGetadd(String getadd) {
        this.getadd = getadd;
    }
}
