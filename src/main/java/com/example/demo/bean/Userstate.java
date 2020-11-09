package com.example.demo.bean;

public class Userstate {
    int id;
    int sno;
    String sname;
    String wen;
    String add;
    String time;
    public Userstate(){ }
    public Userstate(int id, int sno, String sname, String wen, String add, String time) {
        this.id = id;
        this.sno = sno;
        this.sname = sname;
        this.wen = wen;
        this.add = add;
        this.time = time;
    }

    @Override
    public String toString() {
        return "Userstate{" +
                "id=" + id +
                ", sno=" + sno +
                ", sname='" + sname + '\'' +
                ", wen='" + wen + '\'' +
                ", add='" + add + '\'' +
                ", time='" + time + '\'' +
                '}';
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

    public String getWen() {
        return wen;
    }

    public void setWen(String wen) {
        this.wen = wen;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
