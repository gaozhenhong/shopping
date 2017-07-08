package com.cmcc.develop.api.model;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class User{

    private String username;

    private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

   
}