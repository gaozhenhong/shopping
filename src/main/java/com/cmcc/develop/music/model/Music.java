package com.cmcc.develop.music.model;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Music{

    private String id;

    private String videourl;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createDate;

    private String title;

    private String describle;

    public String getId() {
        return this.id;
    }

    public void setId (String id) {
        this.id=id;
    }

    public String getVideourl() {
        return this.videourl;
    }

    public void setVideourl (String videourl) {
        this.videourl=videourl;
    }

    public Date getCreateDate() {
        return this.createDate;
    }

    public void setCreateDate (Date createDate) {
        this.createDate=createDate;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle (String title) {
        this.title=title;
    }

    public String getDescrible() {
        return this.describle;
    }

    public void setDescrible (String describle) {
        this.describle=describle;
    }

}