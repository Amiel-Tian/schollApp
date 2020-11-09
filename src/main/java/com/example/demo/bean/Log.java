package com.example.demo.bean;

public class Log {
    int id;
    String user;
    String date;
    String time;
    String content;

    public Log(String user, String date, String time, String content) {
        this.user = user;
        this.date = date;
        this.time = time;
        this.content = content;
    }

    public Log(int id, String user, String date, String time, String content) {
        this.id = id;
        this.user = user;
        this.date = date;
        this.time = time;
        this.content = content;
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
