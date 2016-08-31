package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class UserRole {
	@Id
private int userId;
private String authority;
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getAuthority() {
	return authority;
}
public void setAuthority(String authority) {
	this.authority = authority;
}
}
