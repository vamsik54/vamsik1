package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer {
	@Id@GeneratedValue
	private int customerid;
	@NotEmpty(message="username should not be empty")
	private String username;
	@NotEmpty(message="emailid should not be empty")
	private String emailid;
	private boolean enabled;

//	@OneToOne
//	@JoinColumn(name="mycartId")
//	private MyCart mycart;
//	public MyCart getMycart() {
//		return mycart;
//	}
//	public void setMycart(MyCart mycart) {
//		this.mycart = mycart;
//	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	@NotEmpty(message="password should not be empty")
	private String password;
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
