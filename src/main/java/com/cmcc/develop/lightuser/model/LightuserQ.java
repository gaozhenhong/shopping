package com.cmcc.develop.lightuser.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.cmcc.develop.light.model.Light;
import com.cmcc.develop.music.model.Music;
import com.wiwi.jsoil.db.PageUtil;

public class LightuserQ extends PageUtil {

    private String id;

    private String usercode;

    private String loginName;

    private String loginPswd;

    private Long createUserId;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private String name;

    private Integer status;

    private String telephone;

    private Long logoId;

    private Light light;

    private Music music;

    public String toWhereString() {

        parameterList.clear();

        String sqlStr = super.getOtherCondition();

        if (id != null && !id.equalsIgnoreCase("")){
            sqlStr += " AND id like ?";
            parameterList.add('%' + id + '%'); 
        }

        if (usercode != null && !usercode.equalsIgnoreCase("")){
            sqlStr += " AND usercode like ?";
            parameterList.add('%' + usercode + '%'); 
        }

        if (loginName != null && !loginName.equalsIgnoreCase("")){
            sqlStr += " AND loginName like ?";
            parameterList.add('%' + loginName + '%'); 
        }

        if (loginPswd != null && !loginPswd.equalsIgnoreCase("")){
            sqlStr += " AND loginPswd like ?";
            parameterList.add('%' + loginPswd + '%'); 
        }

        if (createUserId != null && createUserId != 0 ){
            sqlStr += " AND createUserId =?";
            parameterList.add(createUserId); 
        }

        if (createTime != null){
            sqlStr += " AND createTime =?";
            parameterList.add(createTime); 
        }

        if (name != null && !name.equalsIgnoreCase("")){
            sqlStr += " AND name like ?";
            parameterList.add('%' + name + '%'); 
        }

        if (status != null && status != 0 ){
            sqlStr += " AND status =?";
            parameterList.add(status); 
        }

        if (telephone != null && !telephone.equalsIgnoreCase("")){
            sqlStr += " AND telephone like ?";
            parameterList.add('%' + telephone + '%'); 
        }

        if (logoId != null && logoId != 0 ){
            sqlStr += " AND logoId =?";
            parameterList.add(logoId); 
        }

        if (light != null && light.getId()!=null){
            sqlStr += " AND light like ?";
            parameterList.add('%' + light.getId() + '%'); 
        }

        if (music != null && music.getId()!=null){
            sqlStr += " AND music like ?";
            parameterList.add('%' + music.getId() + '%'); 
        }

        return sqlStr;
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

    public Integer getStatus() {
        return this.status;
    }

    public void setStatus (Integer status) {
        this.status=status;
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