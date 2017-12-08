package com.keichee.mustoutdoor.domain;

public class UserInfo {

	private String userId;
	private String passwd;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("UserInfo [userId=");
		builder.append(userId);
		builder.append(", passwd=");
		builder.append(passwd);
		builder.append("]");
		return builder.toString();
	}
	
	
}
