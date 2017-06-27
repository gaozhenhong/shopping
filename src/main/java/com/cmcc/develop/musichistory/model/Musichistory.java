package com.cmcc.develop.musichistory.model;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Musichistory{

    private String id;

    private String videourl;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createDate;

    private String title;

    private String describle;
    
    private String usercode;

    public String getUsercode() {
		return usercode;
	}

	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}

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