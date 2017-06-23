package com.cmcc.develop.light.model;

import com.wiwi.jsoil.db.PageUtil;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class LightQ extends PageUtil {

    private String id;

    private String instructions;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createDate;

    private String title;

    private String describle;

    private String usercode;
    

    
    private String status;
    

	public String getUsercode() {
		return usercode;
	}

	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String toWhereString() {

        parameterList.clear();

        String sqlStr = super.getOtherCondition();

        if (id != null && !id.equalsIgnoreCase("")){
            sqlStr += " AND id like ?";
            parameterList.add('%' + id + '%'); 
        }

        if (instructions != null && !instructions.equalsIgnoreCase("")){
            sqlStr += " AND instructions like ?";
            parameterList.add('%' + instructions + '%'); 
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
          
        
        if (status != null && !status.equalsIgnoreCase("")){
            sqlStr += " AND status like ?";
            parameterList.add('%' + status + '%'); 
        }
        return sqlStr;
    }

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

}