package com.cmcc.develop.musichistory.model;

import com.wiwi.jsoil.db.PageUtil;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class MusichistoryQ extends PageUtil {

    private String id;

    private String videourl;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createDate;

    private String title;

    private String describle;

    public String getUsercode() {
		return usercode;
	}

	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}

	private String usercode;
    
    public String toWhereString() {

        parameterList.clear();

        String sqlStr = super.getOtherCondition();

        if (id != null && !id.equalsIgnoreCase("")){
            sqlStr += " AND id like ?";
            parameterList.add('%' + id + '%'); 
        }

        if (videourl != null && !videourl.equalsIgnoreCase("")){
            sqlStr += " AND videourl like ?";
            parameterList.add('%' + videourl + '%'); 
        }

        if (createDate != null){
            sqlStr += " AND createDate =?";
            parameterList.add(createDate); 
        }

        if (title != null && !title.equalsIgnoreCase("")){
            sqlStr += " AND title like ?";
            parameterList.add('%' + title + '%'); 
        }

        if (describle != null && !describle.equalsIgnoreCase("")){
            sqlStr += " AND describle like ?";
            parameterList.add('%' + describle + '%'); 
        }
        
        if (usercode != null && !usercode.equalsIgnoreCase("")){
            sqlStr += " AND usercode like ?";
            parameterList.add('%' + usercode + '%'); 
        }

        return sqlStr;
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