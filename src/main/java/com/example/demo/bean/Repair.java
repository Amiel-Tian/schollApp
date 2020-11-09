package com.example.demo.bean;

/*报修类*/
public class Repair {
    int id;
    int sno;
    String sname;
    String time;
    String add;
    String deta;
    String photo;
    String state;
    public Repair(){}
    public Repair(int id, int sno, String time, String add, String deta, String photo) {
        this.id = id;
        this.sno = sno;
        this.time = time;
        this.add = add;
        this.deta = deta;
        this.photo = photo;
    }

    public Repair(int id, int sno, String time, String add, String deta, String photo, String state) {
        this.id = id;
        this.sno = sno;
        this.time = time;
        this.add = add;
        this.deta = deta;
        this.photo = photo;
        this.state = state;
    }

    public Repair(int id, int sno, String sname, String time, String add, String deta, String photo, String state) {
        this.id = id;
        this.sno = sno;
        this.sname = sname;
        this.time = time;
        this.add = add;
        this.deta = deta;
        this.photo = photo;
        this.state = state;
    }

    @Override
    public String toString() {
        return "Repair{" +
                "id=" + id +
                ", sno=" + sno +
                ", sname='" + sname + '\'' +
                ", time='" + time + '\'' +
                ", add='" + add + '\'' +
                ", deta='" + deta + '\'' +
                ", photo='" + photo + '\'' +
                ", state='" + state + '\'' +
                '}';
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
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

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }

    public String getDeta() {
        return deta;
    }

    public void setDeta(String deta) {
        this.deta = deta;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
}
