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
    
    private String soundcontroler;
    
    private String lightbrightness;
    
    private Music currentmusic;
    
    private String mtitle;
    
    private String ltitle;
    
    private String cmusictitle;
    
    private String talkstatus;//聊天开关状态0关1开
    
    private String bofangstatus;//播放模式1、顺序播放 2、随机播放3、单曲
    
    private String lightinstructions;//灯光执行指令

    public String getLightinstructions() {
		return lightinstructions;
	}

	public void setLightinstructions(String lightinstructions) {
		this.lightinstructions = lightinstructions;
	}

	public String getMtitle() {
		return mtitle;
	}

	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}

	public String getLtitle() {
		return ltitle;
	}

	public void setLtitle(String ltitle) {
		this.ltitle = ltitle;
	}

	public String getCmusictitle() {
		return cmusictitle;
	}

	public void setCmusictitle(String cmusictitle) {
		this.cmusictitle = cmusictitle;
	}

	public String getLightbrightness() {
		return lightbrightness;
	}

	public void setLightbrightness(String lightbrightness) {
		this.lightbrightness = lightbrightness;
	}

	public Music getCurrentmusic() {
		return currentmusic;
	}

	public void setCurrentmusic(Music currentmusic) {
		this.currentmusic = currentmusic;
	}

	public String getSoundcontroler() {
		return soundcontroler;
	}

	public void setSoundcontroler(String soundcontroler) {
		this.soundcontroler = soundcontroler;
	}

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

	public String getTalkstatus() {
		return talkstatus;
	}

	public void setTalkstatus(String talkstatus) {
		this.talkstatus = talkstatus;
	}

	public String getBofangstatus() {
		return bofangstatus;
	}

	public void setBofangstatus(String bofangstatus) {
		this.bofangstatus = bofangstatus;
	}

}