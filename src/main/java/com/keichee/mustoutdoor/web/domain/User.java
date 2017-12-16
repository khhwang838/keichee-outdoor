package com.keichee.mustoutdoor.web.domain;

public class User {

	private String userId;
	private String userName;
	private String password;
	private String profileImgUrl;
	private int passwordErrorCount;
	private String lastLoginDttm;
	private String lockYn;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getProfileImgUrl() {
		return profileImgUrl;
	}
	public void setProfileImgUrl(String profileImgUrl) {
		this.profileImgUrl = profileImgUrl;
	}
	public int getPasswordErrorCount() {
		return passwordErrorCount;
	}
	public void setPasswordErrorCount(int passwordErrorCount) {
		this.passwordErrorCount = passwordErrorCount;
	}
	public String getLastLoginDttm() {
		return lastLoginDttm;
	}
	public void setLastLoginDttm(String lastLoginDttm) {
		this.lastLoginDttm = lastLoginDttm;
	}
	public String getLockYn() {
		return lockYn;
	}
	public void setLockYn(String lockYn) {
		this.lockYn = lockYn;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("User [userId=");
		builder.append(userId);
		builder.append(", userName=");
		builder.append(userName);
		builder.append(", password=");
		builder.append(password);
		builder.append(", profileImgUrl=");
		builder.append(profileImgUrl);
		builder.append(", passwordErrorCount=");
		builder.append(passwordErrorCount);
		builder.append(", lastLoginDttm=");
		builder.append(lastLoginDttm);
		builder.append(", lockYn=");
		builder.append(lockYn);
		builder.append("]");
		return builder.toString();
	}
	
}
