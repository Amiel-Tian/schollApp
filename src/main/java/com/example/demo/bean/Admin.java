package com.example.demo.bean;

public class Admin {
    int id;
    String user;
    String pass;
    int power;
    public Admin(){}
    public Admin(int id){}
    public Admin(int id, String user, String pass) {
        this.id = id;
        this.user = user;
        this.pass = pass;
    }

    public Admin(int id, String user, String pass, int power) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.power = power;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", user='" + user + '\'' +
                ", pass='" + pass + '\'' +
                '}';
    }

    public int getPower() {
        return power;
    }

    public void setPower(int power) {
        this.power = power;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
}
