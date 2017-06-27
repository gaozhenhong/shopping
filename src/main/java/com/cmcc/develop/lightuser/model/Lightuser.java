package com.cmcc.develop.lightuser.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.cmcc.develop.light.model.Light;
import com.cmcc.develop.music.model.Music;

public class Lightuser{

    private String id;

    private String usercode;

    private String loginName;

    private String loginPswd;

    private Long createUserId;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private String name;

    private String musicstatus;
    
    private String lstatus;

    private String telephone;

    private Long logoId;

    private Light light;

    private Music music;

    public String getId() {
        return this.id;
    }

    public void setId (String id) {
        this.id=id;
    }

    public String getUsercode() {
        return this.usercode;
    }

    public void setUsercode (String usercode) {
        this.usercode=usercode;
    }

    public String getLoginName() {
        return this.loginName;
    }

    public void setLoginName (String loginName) {
        this.loginName=loginName;
    }

    public String getLoginPswd() {
        return this.loginPswd;
    }

    public void setLoginPswd (String loginPswd) {
        this.loginPswd=loginPswd;
    }

    public Long getCreateUserId() {
        return this.createUserId;
    }

    public void setCreateUserId (Long createUserId) {
        this.createUserId=createUserId;
    }

    public Date getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime (Date createTime) {
        this.createTime=createTime;
    }

    public String getName() {
        return this.name;
    }

    public void setName (String name) {
        this.name=name;
    }

    public String getMusicstatus() {
		return musicstatus;
	}

	public void setMusicstatus(String musicstatus) {
		this.musicstatus = musicstatus;
	}



	public String getLstatus() {
		return lstatus;
	}

	public void setLstatus(String lstatus) {
		this.lstatus = lstatus;
	}

	public String getTelephone() {
        return this.telephone;
    }

    public void setTelephone (String telephone) {
        this.telephone=telephone;
    }

    public Long getLogoId() {
        return this.logoId;
    }

    public void setLogoId (Long logoId) {
        this.logoId=logoId;
    }

    public Light getLight() {
        return this.light;
    }

    public void setLight (Light light) {
        this.light=light;
    }

    public Music getMusic() {
        return this.music;
    }

    public void setMusic (Music music) {
        this.music=music;
    }

}