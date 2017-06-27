package com.cmcc.develop.lighthistory.model;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Lighthistory{

    private String id;

    private String instructions;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createDate;

    private String title;

    private String describle;

    private String usercode;

    private String status;

    public String getId() {
        return this.id;
    }

    public void setId (String id) {
        this.id=id;
    }

    public String getInstructions() {
        return this.instructions;
    }

    public void setInstructions (String instructions) {
        this.instructions=instructions;
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

    public String getUsercode() {
        return this.usercode;
    }

    public void setUsercode (String usercode) {
        this.usercode=usercode;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus (String status) {
        this.status=status;
    }

}