package com.example.demo.bean;

public class New {
    int id;
    String type;
    String time;
    String title;
    String content;
    public New(){}
    public New(int id, String type, String time, String title, String content) {
        this.id = id;
        this.type = type;
        this.time = time;
        this.title = title;
        this.content = content;
    }

    @Override
    public String toString() {
        return "New{" +
                "id=" + id +
                ", type='" + type + '\'' +
                ", time='" + time + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
