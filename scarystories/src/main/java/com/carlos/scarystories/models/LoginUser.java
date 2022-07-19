package com.carlos.scarystories.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class LoginUser {
	
	@NotEmpty(message="An email is required to login")
	@Email(message="Please enter a valid email")
	private String email;
	
	@NotEmpty(message="A password is required to login")
	@Size(min=8, message="Please enter a valid password")
	private String password;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
